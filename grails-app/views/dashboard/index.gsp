<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <asset:stylesheet src="material-dashboard.css"/>
    <asset:stylesheet src="metarial_icon.css"/>
    <asset:javascript src="material-dashboard.js"/>
    <title>Dashboard</title>
    <g:javascript library="jquery" />
    <style type="text/css">
    a{
        text-decoration: none !important;
    }
    </style>

</head>

<body>
    <div align="center"><h1>Dashboard</h1><br></div>
    <div id="page-wrapper">

    <div class="row" style="margin-top: 0;">

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="orange">
                    <i class="material-icons">person</i>
                </div>
                <div class="card-content">
                    <p class="category">Welcome</p>
                    <h3 class="title">${user_name.join(',')}</h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">verified_user</i> ${user_role.join(',')}
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="green">
                    <i class="material-icons">attach_money</i>
                </div>
                <div class="card-content">
                    <p class="category">Today's Sale</p>
                    <h3 class="title">${daily_sale.join(',')} <small>Tk</small></h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">today</i> ${new Date().format('dd MMM yyyy')}
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="purple">
                    <i class="material-icons">shopping_cart</i>
                </div>
                <div class="card-content">
                    <p class="category">Today's Transaction</p>
                    <h3 class="title">${daily_trn.join(',')}</h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">today</i> ${new Date().format('dd MMM yyyy')}
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="blue">
                    <i class="material-icons">group</i>
                </div>
                <div class="card-content">
                    <p class="category">Total Customer</p>
                    <h3 class="title">${total_cust.join(',')}</h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">update</i> Just Updated
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="blue">
                    <i class="material-icons">access_time</i>
                </div>
                <div class="card-content">
                    <p class="category">Monthly Sales</p>
                    <h3 class="title">${this_month_sale.join(',')} <small>Tk</small></h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">date_range</i> ${new Date().format('MMMM yyyy')}
                    </div>
                </div>
            </div>
        </div>
		
		<div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="green">
                    <i class="material-icons">storage</i>
                </div>
                <div class="card-content">
                    <p class="category">Total Item</p>
                    <h3 class="title">${total_item.join(',')}</h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">update</i> Just Updated
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-header" data-background-color="purple">
                    <i class="material-icons">storage</i>
                </div>
                <div class="card-content">
                    <p class="category">Stock Quantity</p>
                    <h3 class="title">${total_stock.join(',')}</h3>
                </div>
                <div class="card-footer">
                    <div class="stats">
                        <i class="material-icons">done_all</i> Total Stock
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
