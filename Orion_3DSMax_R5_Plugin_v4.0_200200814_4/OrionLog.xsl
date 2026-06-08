<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<root>
			<xsl:apply-templates />
		</root>
	</xsl:template>
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

	
<!-- =================================================== -->
<!-- =================================================== -->

	<xsl:template match="Mesh">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
					<b>Mesh : <xsl:value-of select="@Name"/></b>
				</span>
				<span id="faqitem" class="displayNone">
					<ul>
						<li>
							Parent Mesh : <b><xsl:value-of select="Parent/@Name"/></b>
						</li>
						<li>
							Pivot : <b><xsl:value-of select="Pivot/@X"/>, <xsl:value-of select="Pivot/@Y"/>, <xsl:value-of select="Pivot/@Z"/></b>
						</li>
						<li>
							User Params : <b><xsl:value-of select="UserParams/@Value"/></b>
						</li>
						<li>
							<xsl:apply-templates select="Track"/>
						</li>
						
						<!-- ========================= -->
						<!-- Show Vertices -->
						<!-- ========================= -->
						<li>
							<div>
								<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
									<b>Vertices</b><i> (<xsl:value-of select="count(Vertices/Vertex)"/>)</i>
								</span>

								<span id="faqitem" class="displayNone">
									<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD Align="center"> <B>Index</B> </TD>
											<TD Align="center"> <B>X</B> </TD>
											<TD Align="center"> <B>Y</B> </TD>
											<TD Align="center"> <B>Z</B> </TD>
										</TR>
										<xsl:apply-templates select="Vertices"/>
									</table>
								</span>
							</div>
						</li>	
										
						<!-- ========================= -->
						<!-- Show Normals  -->
						<!-- ========================= -->
						<li>					
							<div>
								<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
									<b>Normals</b><i> (<xsl:value-of select="count(Normals/Normal)"/>)</i>
								</span>

								<span id="faqitem" class="displayNone">
									<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD Align="center"> <B>Index</B> </TD>
											<TD Align="center"> <B>X</B> </TD>
											<TD Align="center"> <B>Y</B> </TD>
											<TD Align="center"> <B>Z</B> </TD>
										</TR>
										<xsl:apply-templates select="Normals"/>
									</table>
								</span>
							</div>
						</li>
						
						<!-- ========================= -->
						<!-- Show Texture coordinates  -->
						<!-- ========================= -->
						<li>					
							<div>
								<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
									<b>Texture Coordinates</b><i> (<xsl:value-of select="count(TexCoords/Coord)"/>)</i>
								</span>

								<span id="faqitem" class="displayNone">
									<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD Align="center"> <B>Index</B> </TD>
											<TD Align="center"> <B>U</B> </TD>
											<TD Align="center"> <B>V</B> </TD>
										</TR>
										<xsl:apply-templates select="TexCoords"/>
									</table>
								</span>
							</div>
						</li>	
										
						<!-- =========================  -->
						<!-- Show Faces indices			-->
						<!-- =========================  -->
						<li>					
							<div>
								<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
									<b>Face indexes</b><i> (<xsl:value-of select="count(Faces/Face)"/>)</i>
								</span>

								<span id="faqitem" class="displayNone">
									<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD Align="center"> <B>Index</B> </TD>
											<TD Align="center"> <B>A</B> </TD>
											<TD Align="center"> <B>B</B> </TD>
											<TD Align="center"> <B>C</B> </TD>
										</TR>
										<xsl:apply-templates select="Faces"/>
									</table>
								</span>
							</div>
						</li>
						
						<!-- =========================  -->
						<!-- Show Faces Normals			-->
						<!-- =========================  -->
						<li>					
							<div>
								<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
									<b>Face Normals</b><i> (<xsl:value-of select="count(FaceNormals/FaceNormal)"/>)</i>
								</span>

								<span id="faqitem" class="displayNone">
									<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD Align="center"> <B>Index</B> </TD>
											<TD Align="center"> <B>A</B> </TD>
											<TD Align="center"> <B>B</B> </TD>
											<TD Align="center"> <B>C</B> </TD>
										</TR>
										<xsl:apply-templates select="FaceNormals"/>
									</table>
								</span>
							</div>
						</li>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>
	
<!-- =================================================== -->
<!-- =================================================== -->

	<xsl:template match="Camera">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
					<b>Camera : <xsl:value-of select="@Name"/></b>
				</span>
				<span id="faqitem" class="displayNone">
					<ul>
						<xsl:apply-templates select="Track"/>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>
	
<!-- =================================================== -->
<!-- =================================================== -->
	
	<xsl:template match="Helper">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
					<b>Helper : <xsl:value-of select="@Name"/></b>
				</span>
				<span id="faqitem" class="displayNone">
					<ul>
					<li>Parent : <xsl:value-of select="Parent/@Name"/></li>
					<li><xsl:apply-templates select="Track"/></li>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>
	
<!-- =================================================== -->
<!-- =================================================== -->
	<xsl:template match="Track">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="track">
					<b>Track : <xsl:value-of select="@Name"/></b>
				</span>
				<span id="trackItem" class="displayNone">
					<ul>
						<xsl:if test="PosKey">
							<li>
								<div>
									<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="track">
										<B>Position Keys</B>
									</span>
									
									<span id="trackItem" class="displayNone">
										<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
											<TR>
												<TD Align="center"> <B>Num</B> </TD>
												<TD Align="center"> <B>Frame</B> </TD>
												<TD Align="center"> <B>X</B> </TD>
												<TD Align="center"> <B>Y</B> </TD>
												<TD Align="center"> <B>Z</B> </TD>
											</TR>
											<xsl:apply-templates select="PosKey"/>
										</table>
									</span>
								</div>
							</li>
						</xsl:if>
						
						<xsl:if test="RollSample">
							<li>
								<div>
									<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="track">
										<B>Roll Samples</B>
									</span>
									
									<span id="trackItem" class="displayNone">
										<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
											<TR>
												<TD Align="center"> <B>Num</B> </TD>
												<TD Align="center"> <B>Frame</B> </TD>
												<TD Align="center"> <B>Y</B> </TD>
											</TR>
											<xsl:apply-templates select="RollSample"/>
										</table>
									</span>
								</div>
							</li>
						</xsl:if>
						
						<xsl:if test="RollKey">
							<li>
								<div>
									<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="track">
										<B>Roll Keys</B>
									</span>
									
									<span id="trackItem" class="displayNone">									
										<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
											<TR>
												<TD Align="center"> <B>Num</B> </TD>
												<TD Align="center"> <B>Frame</B> </TD>
												<TD Align="center"> <B>Roll</B> </TD>
											</TR>
											<xsl:apply-templates select="RollKey"/>
										</table>
									</span>
								</div>
							</li>
						</xsl:if>
												
						<xsl:if test="RotSample">
							<li>
								<div>
									<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="track">
										<B>Rotation Samples</B>
									</span>
									
									<span id="trackItem" class="displayNone">									
										<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
											<TR>
												<TD Align="center"> <B>Frame</B> </TD>
												<TD Align="center"> <B>EulerX</B> </TD>
												<TD Align="center"> <B>EulerY</B> </TD>
												<TD Align="center"> <B>EulerZ</B> </TD>
												<TD Align="center"> <B>Parent EulerX</B> </TD>
												<TD Align="center"> <B>Parent EulerY</B> </TD>
												<TD Align="center"> <B>Parent EulerZ</B> </TD>
											</TR>
											<xsl:apply-templates select="RotSample"/>
										</table>
									</span>
								</div>
							</li>
						</xsl:if>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>

<!-- =================================================== -->
<!-- =================================================== -->
	
	<xsl:template match="Layer">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
					<b> <xsl:value-of select="@name" /> </b>
				</span>
				<span id="faqitem" class="displayNone">
					<ul>
						<table class="Parameter" cellSpacing="1" cellPadding="1" width="300" border="1">
							<xsl:apply-templates select="Parameters">
								<xsl:sort select="type"/>
							</xsl:apply-templates>
						</table>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>
	
<!-- =================================================== -->
<!-- =================================================== -->

	<xsl:template match="PosKey">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Num" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Frame" /> </TD>
			<TD Align="center"> <xsl:value-of select="@X" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Y" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Z" /> </TD>
		</TR>
	</xsl:template>

	<xsl:template match="RollKey">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Num" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Frame" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Roll" /> </TD>
		</TR>
	</xsl:template>

	<xsl:template match="RollSample">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Num" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Frame" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Roll" /> </TD>
		</TR>
	</xsl:template>

	<xsl:template match="RotSample">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Frame" /> </TD>
			<TD Align="center"> <xsl:value-of select="@EulerX" /> </TD>
			<TD Align="center"> <xsl:value-of select="@EulerY" /> </TD>
			<TD Align="center"> <xsl:value-of select="@EulerZ" /> </TD>
			<TD Align="center"> <xsl:value-of select="@ParEulerX" /> </TD>
			<TD Align="center"> <xsl:value-of select="@ParEulerY" /> </TD>
			<TD Align="center"> <xsl:value-of select="@ParEulerZ" /> </TD>
		</TR>
	</xsl:template>
	
<!-- =================================================== -->
<!-- =================================================== -->

	<xsl:template match="Vertex">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Index" /> </TD>
			<TD Align="center"> <xsl:value-of select="@X" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Y" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Z" /> </TD>
		</TR>
	</xsl:template>
	
	<xsl:template match="Normal">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Index" /> </TD>
			<TD Align="center"> <xsl:value-of select="@X" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Y" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Z" /> </TD>
		</TR>
	</xsl:template>
	
	<xsl:template match="Coord">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Index" /> </TD>
			<TD Align="center"> <xsl:value-of select="@U" /> </TD>
			<TD Align="center"> <xsl:value-of select="@V" /> </TD>
		</TR>
	</xsl:template>
	
	<xsl:template match="Face">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Index" /> </TD>
			<TD Align="center"> <xsl:value-of select="@A" /> </TD>
			<TD Align="center"> <xsl:value-of select="@B" /> </TD>
			<TD Align="center"> <xsl:value-of select="@C" /> </TD>
		</TR>
	</xsl:template>
	
	<xsl:template match="FaceNormal">
		<TR>
			<TD Align="center"> <xsl:value-of select="@Index" /> </TD>
			<TD Align="center"> <xsl:value-of select="@X" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Y" /> </TD>
			<TD Align="center"> <xsl:value-of select="@Z" /> </TD>
		</TR>
	</xsl:template>

<!-- =================================================== -->
<!-- =================================================== -->
	<xsl:template match="MaxNode">
		<li class="Layer">
			<div>
				<span onclick="getPar(this)" onmouseover="overState(this)" onmouseout="outState(this)" id="faq">
					<b>Node : <xsl:value-of select="@Name"/></b>
				</span>
				<span id="faqitem" class="displayNone">
					<ul>
						<xsl:apply-templates/>
					</ul>
				</span>
			</div>
		</li>
	</xsl:template>
		
<!-- =================================================== -->
<!-- =================================================== -->
	
	<xsl:template match="ExportDump">
		<HTML>
			<HEAD>
				<script src="ToggleText.js" type="text/javascript"> </script>
				
				<TITLE>
					<xsl:value-of select="Generator" />
				</TITLE>
				<style>
					.displayNone{display:none}
				</style>
				<STYLE>
					.Layer{FONT-FAMILY: Verdana; FONT-SIZE: 12}
				</STYLE>
				<STYLE>
					.Parameter{FONT-FAMILY: Verdana; FONT-SIZE: 11}
				</STYLE>				
			</HEAD>
			
			<H2>Info : <xsl:value-of select="Info"/> </H2>

			<xsl:apply-templates select="MaxNode"/>
			
		</HTML>
	</xsl:template>
</xsl:stylesheet>