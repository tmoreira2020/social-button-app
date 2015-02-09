<%--

    Copyright (C) 2015 Thiago Moreira (tmoreira2020@gmail.com)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@include file="/init.jsp"%>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationURL" />

<div class="alert alert-info">
Fill the fields using your username in the social networks, for instance: https://github.com/<strong>tmoreira2020</strong> your username would be <strong>tmoreira2020</strong>.
</div>

<aui:form action="${configurationURL}" method="post" name="fm">

	<aui:input type="hidden" name="cmd" value="update"/>

	<fieldset>
		<c:forTokens items="adn,bitbucket,facebook,flickr,foursquare,github,google-plus,instagram,linkedin,pinterest,tumblr,twitter,vk" delims="," var="name">
			<c:set var="preferences" value="${portletPreferencesValues[name]}" />
			<aui:input name="preferences--${name}--" type="text" value="${preferences[0]}"/>
		</c:forTokens>

		<aui:button-row>
			<aui:button type="submit" />
		</aui:button-row>
	</fieldset>
</aui:form>