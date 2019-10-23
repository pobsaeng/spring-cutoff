<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body style="margin: 0 auto; width:100%">
<div class="row">
    <form class="form-horizontal span12">
        <fieldset>

            <legend>Wine Details</legend>
            <br/>

            <div class="row">
                <div class="span9">

                    <div class="control-group">
                        <label for="wineId" class="control-label">Id:</label>

                        <div class="controls">
                            <input id="wineId" name="id" type="text" value="" class="span1"
                                   disabled/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="name" class="control-label">Name:</label>

                        <div class="controls">
                            <input type="text" id="name" name="name" value=""/>
                            <span class="help-inline"></span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="grapes" class="control-label">Grapes:</label>

                        <div class="controls">
                            <input type="text" id="grapes" name="grapes" value=""/>
                            <span class="help-inline"></span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="country" class="control-label">Country:</label>

                        <div class="controls">
                            <input type="text" id="country" name="country" value=""/>
                            <span class="help-inline"></span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="region" class="control-label">Region:</label>

                        <div class="controls">
                            <input type="text" id="region" name="region" value=""/>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="year" class="control-label">Year:</label>

                        <div class="controls">
<%--                             <select class="span1" id="year" name="year" value="<%= year %>"> --%>
<!--                                 <option -->
<%--                                 <%= year == 2012?'selected':'' %>>2012</option> --%>
<!--                                 <option -->
<%--                                 <%= year == 2011?'selected':'' %>>2011</option> --%>
<!--                                 <option -->
<%--                                 <%= year == 2010?'selected':'' %>>2010</option> --%>
<!--                                 <option -->
<%--                                 <%= year == 2009?'selected':'' %>>2009</option> --%>
<!--                                 <option -->
<%--                                 <%= year == 2008?'selected':'' %>>2008</option> --%>
<!--                                 <option -->
<%--                                 <%= year == 2007?'selected':'' %>>2007</option> --%>
<!--                             </select> -->
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="description" class="control-label">Notes:</label>

                        <div class="controls">
                            <textarea id="description" name="description" class="span6" rows="6"></textarea>
                        </div>
                    </div>

                </div>

            </div>

        </fieldset>

        <div class="form-actions">
            <a href="#" class="btn btn-primary save">Save</a>
            <a href="#" class="btn delete">Delete</a>
        </div>

    </form>

</div>

<div class="row status-bar">
    <div class="span12">
        <div class="alert alert-success" style="display: none">
            <b>Success!</b> Wine saved successfully
        </div>
    </div>
</div>



</body>
</html>