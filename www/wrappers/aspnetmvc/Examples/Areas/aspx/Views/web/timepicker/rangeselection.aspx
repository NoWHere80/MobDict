<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="demo-section" style="width: 500px;">

    <label for="start">Start time:</label>
    <%= Html.Kendo().TimePicker()
          .Name("start")
          .Value("8:00 AM")
          .Min("8:00 AM")
          .Max("6:00 PM")
          .Events(e => e.Change("startChange"))
     %>

    <label for="end" style="margin-left:3em">End time:</label>
    <%= Html.Kendo().TimePicker()
          .Name("end")
          .Value("8:30 AM")
          .Min("8:00 AM")
          .Max("7:30 AM")
     %>
</div>
<script>
    function startChange() {
        var startTime = this.value(),
            endPicker = $("#end").data("kendoTimePicker");

        if (startTime) {
            startTime = new Date(startTime);

            endPicker.max(startTime);

            startTime.setMinutes(startTime.getMinutes() + this.options.interval);

            endPicker.min(startTime);
            endPicker.value(startTime);
        }
    }
</script>

<style scoped>
    #example .k-timepicker {
        vertical-align: middle;
    }

    #example h3 {
        clear: both;
    }

    #example .code-sample {
        width: 60%;
        float:left;
        margin-bottom: 20px;
    }

    #example .output {
        width: 24%;
        margin-left: 4%;
        float:left;
    }
                
</style>
</asp:Content>