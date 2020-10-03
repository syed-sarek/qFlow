package drl2

class DashboardController {

    def index() {
        def user_name= User.executeQuery("select a.name from User a where a.email='${session.user}'")
        def user_role= User.executeQuery("select a.role from User a where a.email='${session.user}'")
        def daily_sale= Daily_sales.executeQuery("select nvl(sum(a.price),0) from Daily_sales a where a.date >= :dateCreated", [ dateCreated : new Date().clearTime()])
        def daily_trn= Daily_sales.executeQuery("select count(a.id) from Daily_sales a where a.date >= :dateCreated", [ dateCreated : new Date().clearTime()])
        def total_cust= Customer.executeQuery("select count(a.id) from Customer a")
		def total_item= Item_master.executeQuery("select count(a.id) from Item_master a")
        def total_stock= Stock.executeQuery("select nvl(sum(a.stock_quantity),0) from Stock a")
        def this_month_sale= Daily_sales.executeQuery("select nvl(sum(a.price),0) from Daily_sales a where TO_CHAR(a.date, 'MM') = :dateCreated", [ dateCreated : new Date().format('MM')])
        render(view: "/Dashboard/index", model: [user_name: user_name, daily_sale: daily_sale, daily_trn: daily_trn, total_cust: total_cust,total_item: total_item, total_stock: total_stock, user_role: user_role, this_month_sale: this_month_sale])
    }
}
