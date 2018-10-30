<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<footer class="text-center">
    <p>&copy; Mateusz Borzyszkowski 2018</p>
    <div class="credits">
        <a href="https://bootstrapmade.com/">Bootstrap Themes</a> by <a
            href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</footer>

<spring:url value="/resources/theme1/js/jquery.js" var="jqueryJs"/>
<spring:url value="/resources/theme1/js/bootstrap.min.js" var="bootstrapJs"/>
<spring:url value="/resources/theme1/js/typeahead.min.js" var="typeaheadJs"/>

<!-- Main Scripts-->
<script src="${jqueryJs}"></script>
<script src="${mainJs}"></script>

<!-- Bootstrap 3 has typeahead optionally -->
<script src="${typeaheadJs}"></script>