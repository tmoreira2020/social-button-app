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
<%@ include file="/init.jsp" %>

<div class="text-center">
	<c:forTokens items="adn,bitbucket,dropbox,facebook,flickr,foursquare,github,google-plus,instagram,linkedin,pinterest,tumblr,twitter,vk" delims="," var="name">
		<c:set var="preferences" value="${portletPreferencesValues[name]}" />
		<c:if test="${not empty(preferences)}">
			<c:set var="preference" value="${preferences[0]}" />
			<c:if test="${not empty(preference)}">
				<c:set var="urlName" value="${name}-url" />
				<c:set var="url" value="${portletConfig.getInitParameter(urlName)}"/>
				<button class="btn btn-social-icon btn-${name}" onclick="location.href='${fn:replace(url, 'username', preference)}'"><i class="icon-${name}"></i></button>
			</c:if>
		</c:if>
	</c:forTokens>
</div>