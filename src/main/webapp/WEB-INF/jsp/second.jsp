<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="fragments/header.jsp" />

<body>

<div class="jumbotron">
    <div class="text-center">
        <h1>Units Converter v0.0.1</h1>
    </div>
</div>

<div class="container">
    <form:form action="second" method="post" modelAttribute="indexParameters">
        <div class="row">
            <div class="input-group">
                <span class="input-group-addon">Value</span>
                <form:input class="form-control" type="text" path="myValue"/>
                <form:select class="form-control" path="unitInput">
                    <form:option value="mm">mm</form:option>
                    <form:option value="cm">cm</form:option>
                    <form:option value="dm">dm</form:option>
                    <form:option value="m">m</form:option>
                    <form:option value="km">km</form:option>
                </form:select>
            </div>
        </div>

        <div class="row">
            <div class="input-group">
                <span class="input-group-addon">Result in</span>
                <form:select class="form-control" path="unitOutput">
                    <form:option value="mm">mm</form:option>
                    <form:option value="cm">cm</form:option>
                    <form:option value="dm">dm</form:option>
                    <form:option value="m">m</form:option>
                    <form:option value="km">km</form:option>
                </form:select>
            </div>
        </div>

        <div class="row text-center">
            <form:button class="btn-success btn-lg" type="submit">Convert</form:button>
        </div>
    </form:form>
</div>

<div class="container">
    <div class="row text-center">
        <h1>${myValue} ${unitOutput}</h1>
    </div>
</div>

</body>

<jsp:include page="fragments/footer.jsp" />

</html>
