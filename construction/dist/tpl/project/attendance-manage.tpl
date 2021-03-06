<div class="module-attendance-mannage">
    <div class="table-container">
        <!-- 表格查询头部 -->
        <div class="hs-align-right table-search layui-form">
            <div class="layui-inline hs-float-left element-title">
                <a class="m-hover-href" href="#project-list" title="返回项目列表">项目列表</a>
                <span href="">/ {{d.pname}} / </span>
                <span>
                    <cite>考勤管理</cite>
                </span>
            </div>

            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="radio" lay-filter="monthRadio" name="month" value="本月" title="本月" checked="">
                    <input type="radio" lay-filter="monthRadio" name="month" value="上月" title="上月">
                </div>
            </div>

            {{# if(d.roleid != 1){ }}
                <div class="layui-inline">
                    <label class="layui-form-label">劳务企业</label>
                    <div class="layui-input-inline">
                        <select name="enterprise" id="enterprise" lay-filter="enterprise" lay-search="">
                            <option value="">请选择或输入劳务企业</option>
                        </select>
                    </div>
                </div>
            {{# } }}

            <div class="layui-inline">
                <label class="layui-form-label">选择日期</label>
                <div class="layui-input-inline">
                    <input type="text" id="dateRange" name="dateRange" lay-verify="dateRange" autocomplete="off" placeholder="请选择日期" class="layui-input m-date-range" readonly>
                </div>
            </div>

            <div class="layui-inline">
                <div class="layui-input-inline module-input-border">
                    <input type="text" id="keyword" name="title" lay-verify="title" autocomplete="off" placeholder="请输入需要查找的姓名" class="layui-input">
                    <button class="layui-btn" lay-submit="" lay-filter="" id="doSearch">
                        <i class="icon-search-white"></i>
                    </button>
                </div>
            </div>

            {{# if(d.roleid != 1){ }}
            <div class="layui-inline">
                <div id="doExport" class="layui-btn layui-btn-normal element-export">导出</div>
            </div>
            {{# } }}
        </div>

        <div class="table-content">
            <table class="layui-hide" id="tableContent" lay-filter="attendanceListTable" ></table>
        </div>
    </div>
</div>