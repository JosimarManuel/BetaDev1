<aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation">
                <li class="user-details cyan darken-2">
                <div class="row">
                    <div class="col col s4 m4 l4">
                        <img src="${contextPath}/resources/images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                    </div>
                    <div class="col col s8 m8 l8">
                        <ul id="profile-dropdown" class="dropdown-content">
                            <li><a href="index.html#"><i class="mdi-action-face-unlock"></i> Perfil</a>
                            </li>
                            <li><a href="index.html#"><i class="mdi-action-settings"></i> Settings</a>
                            </li>
                            <li><a href="index.html#"><i class="mdi-communication-live-help"></i> Help</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="index.html#"><i class="mdi-action-lock-outline"></i> Lock</a>
                            </li>
                            <li><a href="index.html#"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                            </li>
                        </ul>
                        <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="index.html#" data-activates="profile-dropdown">
                        	<c:out value="${pageInfo.usuario.name}"/>
                        <i class="mdi-navigation-arrow-drop-down right"></i></a>
                        <p class="user-roal">Administrator</p>
                    </div>
                </div>
                </li>
                <li class="bold active"><a href="index.html" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i> Dashboard</a>
                </li>
                
                <c:forEach items="${pageInfo.menu}" var="menu">
                	
                	<c:if test="${menu.padre == 'X'}">
                		
                		<li class="no-padding">
                			<ul class="collapsible collapsible-accordion">
                				<li class="bold">
                					<a class="collapsible-header waves-effect waves-cyan">
                						<i class='<c:out value="${menu.icono}"/>'></i>                						 
                						 <c:out value="${menu.item}"/>                						 
                					</a>
                					
                					<div class="collapsible-body">
                						<ul>
                							<c:forEach items="${pageInfo.menu}" var="item">
                								
                								<c:set var="id">${menu.id}</c:set>               								
                								
                								<c:if test="${ id == item.padre}">                								
                									<li><a href="${item.opcion}"> <c:out value="${item.item}"/> </a></li>                								
                								</c:if>
                							</c:forEach>                                    		
                                		</ul>
                					</div>
                					
                				</li>
                			</ul>
                		</li>
                	</c:if>
                	
                	<c:if test="${menu.padre == 'N'}">
                	
                		<li class="bold">
	                		<a href="#" class="waves-effect waves-cyan">
	                			<i class="mdi-editor-insert-invitation"></i> 
	                			 <c:out value="${menu.item}"/> 
	                		</a>
                		</li>                	
                	</c:if>
                	
                </c:forEach>
                
                
            </ul>
                
            </aside>