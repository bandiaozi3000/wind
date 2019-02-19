//默认页码
var default_pageNo = 1;
//默认每页呈现的记录数
var default_pageSize = 20;
$(function () {
    //初始化地区选择器
    var $citypicker1 = $('#StartCityAres');

    var $citypicker2 = $('#EndCityAres');

    //tab页切换
    $('.praise_type label').click(function () {
        $(this).addClass('checked').siblings().removeClass('checked');
    })

    //查询网点与快递员tab
    $('.net_a_courier li').click(function () {
        var index = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        $('.search_cont_cont .net_courier').eq(index).addClass('show').siblings().removeClass('show');
    })

    //网点名称绑定打开网点信息框架
    $('.net_list a').on('click', function () {
        $('.net_cont').show().siblings().hide();
    });
    //网点信息或者快递员信息返回查询结果页面;
    $(".layer-back").click(function () {
        $('.search_cont').show().siblings().hide();
    });

    //网点信息页面内网点信息与快递员切换
    $('.net_tab li').click(function () {
        var index = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        $('.layer-center .net_group').eq(index).addClass('show').siblings().removeClass('show');
    });

    //弹出框切换
    $("#layer-shade").click(function () {
        //查询
        search();
    });
    $(".layer-close").click(function () {
        //关闭弹出框并刷新页面         
        showHide();
        clearData();
    });
    $(".btn-def").click(function () {
        showHide()
    });

    //点击综合搜索时清空地区搜索值
    $("#information").click(function () {
        //清空地区搜索值
        $("#endCityAres").val("");
    });
    //点击地区搜索时清空综合搜索值
    $("#endCityAres").click(function () {
        //清空综合搜索值
        clearDataMi();
    });

    //初始化网点分页控件
    initPageControl();
    //初始化业务员分页控件
    initPageControlThree();

    //绑定查询回车事件
    $("#form").keydown(function (e) {
        if (e.keyCode == 13) {
            search();
        }
    });
});

function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}

//网点分页
function initPageControl() {
    //初始化分页
    $("#tcdPageCode").createPage({
        pageCount: 1,
        current: default_pageNo,
        backFn: function (num, type) {
            if (type != 'init') {
                default_pageNo = num;
                // 一级
                if (getUrlParam("provinceId") == null) {
                    //中国地图首页查询
                    var privance = $("#map1").val();
                    if (privance != undefined && privance != null && privance != "") {
                        LoadDataByArea(privance, null, null);
                    }
                    else {
                        //地区搜索
                        //LoadPageData();
                        var key = $("#information").val();
                        if (key != undefined && key != null && key != "") {
                            //清空地区搜索值
                            $("#endCityAres").val("");
                            //获取综合搜索值
                            multiSearch(key);
                        } else {
                            //清空综合搜索值
                            clearDataMi();
                            //地区搜索
                            LoadPageData();
                        }
                    }
                }
                else {                    
                    var cityAres = $("#endCityAres").val();
                    if (cityAres == undefined || cityAres == null || cityAres == "") {
                        //二级子页面查询
                        var city = parent.document.getElementById("iframe").contentWindow.document.getElementById("city").value;
                        var privance1 = parent.document.getElementById("iframe").contentWindow.document.getElementById("province").value;
                        if (privance1 != undefined && privance1 != null && privance1 != "" && city != undefined && city != null && city != "") {
                            privance = privance1;
                            LoadDataByArea(privance, city, null);
                            return;
                        }
                        //缺少逻辑判断 add by 潘华国 2018-05-31
                        if (privance1) {
                            LoadDataByArea(privance1, null, null);
                            return;
                        }
                    } else {
                        //地区搜索
                        //LoadPageData();
                        var key = $("#information").val();
                        if (key != undefined && key != null && key != "") {
                            //清空地区搜索值
                            $("#endCityAres").val("");
                            //获取综合搜索值
                            multiSearch(key);
                        } else {
                            //清空综合搜索值
                            clearDataMi();
                            //地区搜索
                            LoadPageData();
                        }
                    }

                }

            }
        }
    });
}

//网点详情页业务员分页
function initPageControlThree() {
    //初始化分页
    $('#tcdPageCodeThree').createPage({
        pageCount: 1,
        current: default_pageNo,
        backFn: function (num, type) {
            if (type != 'init') {
                default_pageNo = num;
                multiSearchs(objCompanyId, objUserDistrictId);
            }
        }
    });
}
//按钮选择情况
function ListByArea(value) {

    $("#map1").val(value);
    var privance = value;
    LoadDataByArea(privance, null, null);
}

//二级界面按钮选择情况
function ListByArea2(privance, city) {

    LoadDataByArea(privance, city, null);
}

//查询
function search() {
    default_pageNo = 1;
    var key = $("#information").val();
    if (key != undefined && key != null && key != "") {
        //清空地区搜索值
        $("#endCityAres").val("");
        //获取综合搜索值
        multiSearch(key);
    }
    else {
        //清空综合搜索值
        clearDataMi();
        //地区搜索
        LoadPageData();
    }
}

function multiSearch(key) {
    var datas = {};//参数集合
    datas["key"] = key;
    datas["from"] = (default_pageNo - 1) * default_pageSize;
    datas["size"] = default_pageSize;
    $.ajax({
        type: "POST",
        url: "/Site/GetOranizeByKey",
        data: datas,
        success: function (result) {
            $("#organizeCount").text("");
            if (result.Status == true) {
                var conunt = 0;
                if (result.Data.OrganizeTotalCount > 20) {
                    result.RecordCount = result.Data.OrganizeTotalCount;
                }

                if (result.Data.OrganizeTotalCount % default_pageSize == 0) {
                    conunt = result.Data.OrganizeTotalCount / default_pageSize;
                }
                else {
                    conunt = Math.floor(result.Data.OrganizeTotalCount / default_pageSize) + 1;
                }
                if (conunt == 0) {
                    conunt = 1;
                }
                //绑定模板
                $('#organizeList').empty();
                $("#organizeTemplate").tmpl(result.Data.Organizies).appendTo('#organizeList');
                $("#organizeCount").text('(' + result.Data.OrganizeTotalCount + ')');
                //$( "#userCount" ).text( '(' + 0 + ')' );
                $("#tcdPageCode").createPage(
                {
                    current: default_pageNo,
                    pageCount: conunt
                });
                $('.layer-shade').show();
                //showHide();
            }
                //if ( result.Status == true )
                //{                
                //    var conunt = 0;
                //    if ( result.Data.length > 20 )
                //    {
                //        result.RecordCount = result.Data.length;
                //    }

                //    if ( result.RecordCount % default_pageSize == 0 )
                //    {
                //        conunt = result.RecordCount / default_pageSize;
                //    }
                //    else
                //    {
                //        conunt = Math.floor( result.RecordCount / default_pageSize ) + 1;
                //    }
                //    if ( conunt == 0 )
                //    {
                //        conunt = 1;
                //    }
                //    //绑定模板
                //    $('#organizeList').empty();                
                //    $( "#organizeTemplate" ).tmpl( result.Data ).appendTo( '#organizeList' );
                //    $( "#organizeCount" ).text( '(' + result.RecordCount + ')' );
                //    //$( "#userCount" ).text( '(' + 0 + ')' );
                //    $( "#tcdPageCode" ).createPage(
                //    {
                //        current: default_pageNo,
                //        pageCount: conunt
                //    } );
                //    $( '.layer-shade' ).show();
                //    //showHide();
                //}
            else {
                alert(result.StatusMessage);
            }
        }
    });
}

//省市区分页数据
function LoadPageData() {
    var privance = ""; //省份
    var city = "";//城市
    var district = "";//街道
    $(".city-picker-span").find("span.title").find("span.select-item").each(function (index, element) {
        var type = $(element).attr("data-count");
        var code = $(element).attr("data-code");
        if (type === "province") {
            privance = code;
        }
        else if (type === "city") {
            city = code;
        }
        else if (type === "district") {
            district = code;
        }
    });
    LoadDataByArea(privance, city, district);
    return false;
}

//根据省市区获取网点数据
function LoadDataByArea(provice, city, district) {

    if (provice.length == 0 && city.length == 0 && district.length == 0) {
        console.info('请选择省市区查询');
        return;
    }
    var datas = {};//参数集合
    datas["provinceId"] = provice;
    datas["cityId"] = city;
    datas["districtId"] = district;
    datas["from"] = (default_pageNo - 1) * default_pageSize;
    datas["size"] = default_pageSize;
    $.ajax({
        type: "POST",
        url: "/Site/GetOranizeByAreas",
        data: datas,
        success: function (result) {
            $("#organizeCount").text("");
            if (result.Status == true) {
                var conunt = 0;
                if (result.Data.length > 20) {
                    result.RecordCount = result.Data.length;
                }

                if (result.RecordCount % default_pageSize == 0) {
                    conunt = result.RecordCount / default_pageSize;
                }
                else {
                    conunt = Math.floor(result.RecordCount / default_pageSize) + 1;
                }
                if (conunt == 0) {
                    conunt = 1;
                }
                //绑定模板
                $('#organizeList').empty();
                $("#organizeTemplate").tmpl(result.Data).appendTo('#organizeList');
                $("#organizeCount").text('(' + result.RecordCount + ')');
                //$( "#userCount" ).text( '(' + 0 + ')' );
                $("#tcdPageCode").createPage(
                {
                    current: default_pageNo,
                    pageCount: conunt
                });
                $('.layer-shade').show();
                //showHide();
            }
            else {
                alert(result.StatusMessage);
            }
        }
    });
}

//根据id打开网点详情页面，传递参数
function showDetail(Code) {

    $.get("/Site/GetOrganizeByCode", { Code: Code }, function (result) {
        $("#selfServicePoints").text("");
        $('#CompanyCode').attr('href', '/Service/OrderByCompany?companyCode=' + Code + '');
        $('#fullName').attr('href', '/Service/OrganizeDetail?code=' + Code + '');
        $("#fullName").text(result.Data.FullName + "(" + result.Data.Code + ")");
        $("#fullName2").text(result.Data.FullName);
        $("#manager").text(result.Data.Manager);
        $("#address").text(result.Data.Province + result.Data.City + result.Data.District + result.Data.Address);
        if (result.Data.CategoryCode == "转运中心" || result.Data.CategoryCode == "管理区") {
            $("#CompanyCode").hide();
        }
        if (result.Data.SiteTelephone != null && result.Data.SiteTelephone != "") {
            telPhone = result.Data.SiteTelephone.replace("—", "-");
            $("#phone").html(telPhone);
            $("#tel").show();
        } else {
            $("#tel").hide();
        }
        if (result.Data.ServiceManagerPhone != null && result.Data.ServiceManagerPhone != "" && result.Data.ServiceManagerPhone != undefined) {
            if (result.Data.ServiceManagerPhone != null && result.Data.ServiceManager != null) {
                $("#serviceManager").text(result.Data.ServiceManagerPhone + '(' + result.Data.ServiceManager + ')');
                $("#ser").show();
            } else {
                $("#ser").hide();
            }
        } else {
            if (result.Data.ServiceManagerMobile != null && result.Data.ServiceManager != null) {
                $("#serviceManager").text(result.Data.ServiceManagerMobile + '(' + result.Data.ServiceManager + ')');
                $("#ser").show();
            } else {
                $("#ser").hide();
            }
        }
        if (result.Data.ComplaintPhone != null && result.Data.ComplaintPhone != "") {
            $("#complaintPhone").text(result.Data.ComplaintPhone);
            $("#com").show();
        } else {
            $("#com").hide();
        }


        $("#dispatchRange").text(result.Data.DispatchRange);
        if (result.Data.SelfServicePoints != null && result.Data.SelfServicePoints != "" && result.Data.SelfServicePoints != undefined) {

            $("#selfServicePoints").text(result.Data.SelfServicePoints + '(仅为客户提供覆盖行政区域内的自取、自寄快件服务，暂不提供派送服务)');
            //$( "#tr" ).css( "display", "block" );
            $("#tr").show();
        }
        else {
            //$( "#tr" ).css( 'display', 'none' );
            $("#tr").hide();
        }
        $("#notDispatchRange").text(result.Data.NotDispatchRange);
        Code = result.Data.Code;
        CompanyId = result.Data.Id;
        UserDistrictId = result.Data.DistrictId;
        showCourierList(CompanyId, UserDistrictId);
        //网点名称绑定打开网点信息框架
        $('.net_cont').show().siblings().hide();
    });
}

//点击快递小哥，查询数据
function showCourierList(CompanyId, UserDistrictId) {

    objCompanyId = CompanyId;
    objUserDistrictId = UserDistrictId;
    default_pageNo = 1;
    multiSearchs(CompanyId, UserDistrictId);
}

//快递小哥查询
function multiSearchs(CompanyId, UserDistrictId) {

    var datas = {};
    datas["companyId"] = CompanyId;
    datas["userDistrictId"] = UserDistrictId;
    datas["from"] = (default_pageNo - 1) * default_pageSize;
    datas["size"] = default_pageSize,
    $.ajax({
        type: "POST",
        url: "/Site/GetSiteUsers",
        data: datas,
        success: function (result) {

            if (result.Status == true) {
                //绑定模板
                $("#courier").text("(" + result.RecordCount + ")");
                $('#courierList').empty();
                $("#courierTemplate").tmpl(result.Data).appendTo('#courierList');
                //$( "#tcdPageCodeThree" ).createPage(
                //{
                //    current: default_pageNo,
                //    pageCount: conunt
                //} );
                //网点名称绑定打开网点信息框架
                $('.net_cont').show().siblings().hide();
            }
        }
    });
}

//业务员详情页
function showCourier(Id) {
    $.get("/Site/GetUserById", { Id: Id }, function (result) {
        debugger;
        if (result.Data.ReceiveArea != null && result.Data.ReceiveArea != "" && result.Data.ReceiveArea != undefined) {
            $('#UserCode').attr('href', '/Service/OrderByCourier?code=' + result.Data.Code + '');
            //$( '#UserCode' ).show();
        } else {
            layer.msg("该业务员只派件不揽件")
            $('#UserCode').attr('href', '/Service/OrderByCompany?companyCode=' + result.Data.CompanyCode + '');
            //$( '#UserCode' ).hide();
        }
        $("#realName").text(result.Data.RealName + ' - ' + result.Data.CompanyName);
        $("#userName").text(result.Data.RealName);
        $("#companyName").text(result.Data.CompanyName);
        $("#code").text(result.Data.Code);
        $("#mobile").text(result.Data.Mobile);
        if (result.Data.ReceiveArea == null || result.Data.ReceiveArea == "" || result.Data.ReceiveArea == undefined) {
            $("#receiveArea").text(result.Data.DispArea);
        } else {
            $("#receiveArea").text(result.Data.ReceiveArea);
        }

        //快递员绑定打开网点信息框架
        $('.courier_cont').show().siblings().hide();
        Code = result.Data.CompanyCode;
        $("#companyName").click(function () {
            showDetail(Code);
        })
        if (result.Data.ReceiveArea == null || result.Data.ReceiveArea == "" || result.Data.ReceiveArea == undefined) {
            $("#wechat").attr("src", "/css/images/img/sto_logo.jpg");
        } else {
            code2 = result.Data.Code;
            //获取员工二维码名片
            GetUserQRCodeUrl(code2);
        }
        //code3 = result.Data.Code;       
        //GetImage( code3 );
    });
}

//获取用户的二维码链接
function GetUserQRCodeUrl(code2) {

    code2 = code2 + '';
    var args = {};
    args["code"] = code2;
    $.ajax({
        type: "POST",
        url: "/Site/GetUserQRCodeUrl",
        data: args,
        success: function (data) {
            if (data.Status === true) {
                debugger;
                var url = data.ResultValue;
                if (url != null && url != 'undefined') {
                    $("#wechat").attr("src", url);
                }
            }
            else {
                console.log('失败:' + data.StatusMessage);
            }

        },
        error: function (err) {
            console.log('出错了' + JSON.stringify(err));
        }
    });
}

//清空地区搜索值function clearDataCity() {
    $(".city-picker-span").find("span.title").find("span.select-item").empty();
}

//清空综合搜索值
function clearDataMi() {

    $("#information").val("");
}

// 清空界面数据（在登记成功后）function clearData() {
    window.location.reload();
}

//打开界面
function showHide() {
    $(".layer-shade").toggle();
}
