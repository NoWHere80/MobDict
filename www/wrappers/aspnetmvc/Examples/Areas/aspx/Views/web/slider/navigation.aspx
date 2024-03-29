<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<%:Html.Kendo().Slider()
        .Name("slider")
        .Min(0)
        .Max(30)
        .SmallStep(1)
        .LargeStep(10)
        .Value(18)
        .HtmlAttributes(new { @class = "temperature" })
%>
<br /><br /><br />
<%:Html.Kendo().RangeSlider()
        .Name("rangeslider")
        .Min(0)
        .Max(30)
        .SmallStep(1)
        .LargeStep(10)
        .HtmlAttributes(new { @class = "humidity" })
%>

<script>
    $(document.body).keydown(function (e) {
        if (e.altKey && e.keyCode == 87) {
            $(".temperature .k-draghandle")[0].focus();
        } else if (e.altKey && e.keyCode == 81) {
            $(".humidity .k-draghandle").first()[0].focus();
        }
    });

</script>

<ul class="keyboard-legend" style="padding-top: 25px">
    <li>
        <span class="button-preview">
            <span class="key-button leftAlign">Alt</span>
            +
            <span class="key-button">W</span>
        </span>
        <span class="button-descr">
            Focuses the slider (clicking on it or tabbing also work)
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button leftAlign">Alt</span>
            +
            <span class="key-button">Q</span>
        </span>
        <span class="button-descr">
            Focuses the range slider (clicking on it or tabbing also work)
        </span>
    </li>
</ul>

<h4>Supported keys and user actions</h4>
<ul class="keyboard-legend">
    <li>
        <span class="button-preview">
            <span class="key-button">Right</span>
        </span>
        <span class="button-descr">
            Increments the value by a small step (equivalent to Up)
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Left</span>
        </span>
        <span class="button-descr">
            Decrements the value by a small step (equivalent to Down)
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button wider">Page Up</span>
        </span>
        <span class="button-descr">
            Increments the value by a large step
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button wider">Page Down</span>
        </span>
        <span class="button-descr">
            Decrements the value by a large step
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Home</span>
        </span>
        <span class="button-descr">
            Move the draghandle to the min value
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">End</span>
        </span>
        <span class="button-descr">
            Move the draghandle to the max value
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Tab</span>
        </span>
        <span class="button-descr">
            Tabs to second range slider draghandle or next focusable page element
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button leftAlign">Shift</span>
            +
            <span class="key-button">Tab</span>
        </span>
        <span class="button-descr">
            Tabs to first range slider draghandle or previous focusable page element
        </span>
    </li>
</ul>
</asp:Content>