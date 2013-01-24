<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script>
    function onSelect(e) {
        kendoConsole.log("Selected: " + $(e.item).find("> .k-link").text());
    }

    function onActivate(e) {
        kendoConsole.log("Activated: " + $(e.item).find("> .k-link").text());
    }

    function onContentLoad(e) {
        kendoConsole.log("Content loaded in <b>"+ $(e.item).find("> .k-link").text() + "</b> and starts with <b>" + $(e.contentElement).text().substr(0, 20) + "...</b>");
    }

    function onError(e) {
        kendoConsole.error("Loading failed with " + e.xhr.statusText + " " + e.xhr.status);
    }
</script>

<% Html.Kendo().TabStrip()
        .Name("tabstrip")
        .Events(events => events
            .Select("onSelect")
            .Activate("onActivate")
            .ContentLoad("onContentLoad")
            .Error("onError")
        )
        .Items(tabstrip =>
        {
            tabstrip.Add().Text("First Tab")
                .Selected(true)
                .Content(() => { %>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer felis libero, lobortis ac rutrum quis, varius a velit. Donec lacus erat, cursus sed porta quis, adipiscing et ligula. Duis volutpat, sem pharetra accumsan pharetra, mi ligula cursus felis, ac aliquet leo diam eget risus. Integer facilisis, justo cursus venenatis vehicula, massa nisl tempor sem, in ullamcorper neque mauris in orci. Proin sagittis elementum odio, eu vestibulum arcu rhoncus eu. Pellentesque lorem arcu, tempus at dapibus nec, tincidunt a ante. Cras eget arcu id augue sollicitudin fermentum. Quisque ullamcorper ultrices ante, ut mollis neque tincidunt nec. Aenean sollicitudin lobortis nibh, vitae sagittis justo placerat et. Fusce laoreet consequat arcu, quis placerat massa lacinia vel. Etiam fringilla purus ac ipsum euismod nec aliquet lorem aliquet. Aliquam a nunc ac lorem lobortis pulvinar. Integer eleifend lobortis risus vel commodo. Integer nisl turpis, facilisis a porttitor nec, tempus ac enim. Proin pulvinar vestibulum ligula id mattis. Integer posuere faucibus accumsan.</p>
                <% });

            tabstrip.Add().Text("Second Tab")
                .Content(() => { %>
<p>Ut orci ligula, varius ac consequat in, rhoncus in dolor. Mauris pulvinar molestie accumsan. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean velit ligula, pharetra quis aliquam sed, scelerisque sed sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam dui mi, vulputate vitae pulvinar ac, condimentum sed eros. Donec varius tristique erat in consequat. Pellentesque a blandit nulla. Aenean mattis eros vel magna laoreet ut rutrum turpis ultrices. Sed feugiat, urna id vulputate vulputate, dui nibh fringilla erat, at molestie diam arcu sed velit. Sed imperdiet suscipit dolor, sollicitudin feugiat orci ullamcorper cursus. Nunc non nunc arcu, et malesuada urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam tempor urna sed sapien aliquam ultricies. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                <% });

            tabstrip.Add().Text("Third Tab")
                .Content(() => { %>
<p>Aliquam at nisl quis est adipiscing bibendum. Nam malesuada eros facilisis arcu vulputate at aliquam nunc tempor. In commodo scelerisque enim, eget sodales lorem condimentum rutrum. Phasellus sem metus, ultricies at commodo in, tristique non est. Morbi vel mauris eget mauris commodo elementum. Nam eget libero lacus, ut sollicitudin ante. Nam odio quam, suscipit a fringilla eget, dignissim nec arcu. Donec tristique arcu ut sapien elementum pellentesque. Donec varius arcu in dolor elementum dignissim. Etiam ac consequat metus. Praesent semper diam id mi dictum sagittis. Etiam nulla metus, convallis sit amet rutrum non, cursus ornare ligula. Integer turpis leo, vulputate eget pulvinar in, condimentum sit amet metus. Pellentesque vulputate, velit non feugiat tincidunt, nulla dolor rutrum nibh, id gravida orci sem id nulla. Suspendisse egestas eleifend lorem vel lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec odio elit, vestibulum ut placerat vitae, volutpat vitae erat. Aliquam sodales nisl in est varius at feugiat nibh sagittis. Cras et molestie erat. Integer elit lorem, mattis non tempus in, molestie vitae sapien.</p>
                <% });

            tabstrip.Add().Text("Fourth Tab")
                .Content(() => { %>
<p>Maecenas vitae eros vel enim molestie cursus. Proin ut lacinia ipsum. Nam at elit arcu, at porttitor ipsum. Praesent id viverra lorem. Nam lacinia elementum fermentum. Nulla facilisi. Nulla bibendum erat sed sem interdum suscipit. Vestibulum eget molestie leo. Aliquam erat volutpat. Ut sed nulla libero. Suspendisse id euismod quam. Aliquam interdum turpis vitae purus consectetur in pulvinar libero accumsan. In id augue dui, ac volutpat ante. Suspendisse purus est, ullamcorper id bibendum sed, placerat id leo. Cras ipsum augue, adipiscing ac fringilla ac, posuere tempor purus. Ut at rhoncus ipsum. Sed sodales aliquam dolor, non dictum ipsum facilisis at. Integer non orci arcu, auctor aliquam purus.</p>
                <% });

            tabstrip.Add().Text("Fifth Tab")
                .Content(() => { %>
<p>Fusce nec mauris enim, non pharetra neque. Etiam elementum nunc ut velit fermentum sed porta eros dignissim. Duis at nisl eros. Integer arcu nisl, accumsan non molestie at, elementum nec odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, aliquam vel viverra ac, varius at sapien. Nullam elementum nulla non libero interdum vestibulum at in lacus. Curabitur ac magna ac lacus dapibus convallis non at turpis. Curabitur risus diam, adipiscing vel bibendum non, luctus ut lectus. Donec erat felis, volutpat quis tincidunt eget, condimentum at enim. Cras condimentum, elit vitae facilisis fermentum, quam justo pulvinar lacus, in semper nunc lorem vel risus. Nunc quis mauris orci. Sed ultricies sagittis aliquam. Curabitur nec faucibus nisl. Maecenas vel mauris tellus. Nulla facilisi. Quisque pulvinar, nunc sed ultricies condimentum, dui nisl facilisis augue, id laoreet felis neque id dolor.</p>
                <% });

            tabstrip.Add().Text("Ajax Tab")
                .LoadContentFrom(Url.Content("~/Content/web/tabstrip/ajax/ajaxContent1.html"));

            tabstrip.Add().Text("Error Tab")
                .LoadContentFrom("error.html");
        })
        .Render();
%>

<div class="console"></div>
</asp:Content>