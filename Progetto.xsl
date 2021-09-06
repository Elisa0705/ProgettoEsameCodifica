<?xml version="1.0" encoding="UTF-8"?>
<!--
    Progetto esame-corso Codifica di testi 2020-21
    Studente: Elisa Gulino
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:value-of select="//tei:titleStmt/tei:title"/>
				</title>
				<link rel = "stylesheet" href="stile.css"/>
			</head>
			<body>
				<header>
					<ul>
                        <li><a href="#cartolina41">CARTOLINA 41</a></li>
						<li><a href="#cartolina124">CARTOLINA 124</a></li>
						<li><a href="#informazioni">INFO</a></li>
                    </ul> 
					<div id="title">
						<h1>
							<xsl:value-of select="//tei:titleStmt/tei:title"/>
						</h1>
					</div>
				</header>
				<!--CARTOLINA 41-->
			    <div id="cartolina41">
					<div class="numeroC">Cartolina <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:idno"/>
					</div>
			        <section class="box">
						<!-- titolo -->
						<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
						<div class="generaleCart">
							<h3>Fronte</h3>
							<!-- fronte -->
							<div id="fronte">
								<!--immagine fronte-->
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="tei:teiCorpus/tei:TEI/tei:facsimile/tei:surface[@xml:id='C041F']/tei:graphic/@url"/>
									</xsl:attribute>
								</xsl:element>
								<!-- info fronte -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[1]/tei:figure"/><b>[Scritta illegibile]</b>
							</div>
			            	<div class="contenitore">
								<h3>Retro</h3>
								<div class="cartolina">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surface[@xml:id='C041R']/tei:graphic/@url"/>
										</xsl:attribute>
									</xsl:element>
									<!--idno-->
									<div class="idno_mess">
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:idno"/>
									</div>
									<div class="mex">
										<!-- messaggio -->
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[1]"/>	
									</div>
									<div class="ind">	
										<!-- indirizzi -->
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:p[2]/tei:address"/>
									</div>
								</div>								
								<!-- stampe -->
								<div class="sta">
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:p[1]"/>	
								</div>
							</div>
						</div>
						<div class="info">
							<div class="column">
								<!--info comuni cartoline-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:teiHeader//tei:msDesc"/>
			                   <!--info singola cartolina-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader"/>
							</div>
							<div class="column">
								<p><b>Mittente: </b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='MB']/tei:persName"/></p>
								<p><b>Destinatario: </b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='OT']/tei:persName"/></p>
								<p><b>Provenienza: </b><xsl:value-of select="//tei:listPlace/tei:place[@xml:id='FC']/tei:placeName"/> (<xsl:value-of select="//tei:listPlace/tei:place[@xml:id='FC']/tei:district[2]"/>)</p>
								<p><b>Destinazione: </b><xsl:value-of select="//tei:listPlace/tei:place[@xml:id='RV']/tei:district[1]"/> (<xsl:value-of select="//tei:listPlace/tei:place[@xml:id='RV']/tei:district[2]"/>)</p>
								<!-- data corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]//tei:correspAction[1]/tei:date"/>
							</div>
						</div>
			        </section> 
			    </div>

			   	<!--CARTOLINA 124-->
			    <div id="cartolina124">
					<div class="numeroC">Cartolina <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:idno"/>
					</div>
			        <section class="box">
					<!-- titolo -->
						<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
						<div class="generaleCart">
			                <h3>Fronte</h3>
							<!-- fronte della cartolina-->
							<div id="fronte">
							<!-- immagine fronte -->
								<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='C124F']/tei:graphic/@url"/>
										 </xsl:attribute>
								</xsl:element>
								<!--info fronte-->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[1]/tei:figure"/>
								<!-- autore dell'opera-->
								<xsl:apply-templates select="//tei:person[@xml:id='M']/tei:persName"/>
							</div>
							<div class="contenitore">
								<h3>Retro</h3>
								<div class="cartolina">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='C124R']/tei:graphic/@url"/>
										</xsl:attribute>
									</xsl:element>
									<!--idno-->
									<div class="idno_mess">
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:idno"/>
									</div>
									<div class="mex">
										<!-- messaggio -->
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[1]"/>	
									</div>
									<div  class="stampe">
										<!-- stampe della cartolina -->
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[2]"/>
									</div>
									<div class="ind">
										<!-- indirizzi -->
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[3]/tei:p[1]"/>	
									</div>
								</div>
								<!-- stampe -->
								<div class="sta">
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[3]/tei:p[2]"/>
								</div>	
							</div>
						</div>
						
						<div class="info">	
							<div class="column">
								<!--info comuni cartoline-->
								<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader//tei:msDesc"/>
								<!--info singola cartolina-->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader"/>
							</div>
							<div class="column">
								<p><b>Mittente: </b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='GC']/tei:persName"/></p>
								<p><b>Destinatario: </b><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='AT']/tei:persName"/></p>
								<p><b>Provenienza: </b><xsl:value-of select="//tei:listPlace/tei:place[@xml:id='MO']/tei:placeName"/> (<xsl:value-of select="//tei:listPlace/tei:place[@xml:id='MO']/tei:district[2]"/>)</p>
								<p><b>Destinazione: </b><xsl:value-of select="//tei:listPlace/tei:place[@xml:id='RV']/tei:placeName"/> (<xsl:value-of select="//tei:listPlace/tei:place[@xml:id='RV']/tei:district[2]"/>)</p>
								<!-- data corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]//tei:correspAction[1]/tei:date"/>
							</div>
						</div>
			        </section> 
			    </div>

			    <!--INFO-->
                <div id="informazioni">
                	<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc"/>
               	</div>	
			</body>
		</html>
	</xsl:template>
	
	<!--template titolo cartolina -->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title">
    	<h2><xsl:value-of select="."/></h2>
    </xsl:template>

	<!--info comuni cartoline-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader//tei:msDesc">
	    <p><b>Definizione: </b><xsl:value-of select="//tei:objectType"/></p>
	    <p><b>Materiale: </b><xsl:value-of select="//tei:material"/></p>
	    <p><b>Dimensioni: </b><xsl:value-of select="//tei:height"/>x<xsl:value-of select="//tei:width"/>cm</p>
	    <p><b>Stato di conservazione: </b><xsl:value-of select="//tei:condition"/></p>
	    <p><b>Lingua: </b><xsl:value-of select="//tei:textLang"/></p>
	</xsl:template>

	<!--template date corrispondenza-->
	<xsl:template match="tei:teiCorpus/tei:TEI//tei:correspAction[1]/tei:date">
		 <p><b>Data: </b><xsl:value-of select="."/></p>
	</xsl:template>

    <!--template dati immagini fronte cartoline -->
     <xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[1]/tei:figure">
        <p><b>Opera: </b><xsl:value-of select="tei:head"/></p>
        <p><b>Descrizione dell'opera: </b><xsl:value-of select="tei:figDesc"/></p>
    </xsl:template>

	<!--template idno pre messaggio-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:p/tei:idno">
		 <p><xsl:value-of select="."/></p>
	</xsl:template>

	<!--info singola cartolina-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader">
    	<p><b>Codice Identificativo: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></p>
    	<p><b>Descrizione: </b><xsl:value-of select="tei:profileDesc/tei:textClass/tei:keywords/tei:term[2]"/></p>
    </xsl:template>

	<!--template  abbr-->
	<xsl:template match="tei:choice">
        <xsl:value-of select="tei:abbr"/> (<xsl:value-of select="tei:expan"/>)
    </xsl:template>

	<!--template  unclear-->
	<xsl:template match="tei:unclear">
		<xsl:value-of select="."/><span>(poco chiaro),</span><br/>
    </xsl:template>

	<!--template  info-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader/tei:fileDesc">
	    <h2 id="INFO">INFO</h2>
		<div class="column1">
			<!--Edizione digitale-->
			<p>
				<b>
					Edizione digitale a cura di:			
				</b>
				<xsl:value-of select="tei:editionStmt/tei:edition"/>
			</p>
			<!--pubblicazione-->
			<p>
				<b>
					Pubblicazione rilasciata da:
				</b>
				<xsl:value-of select="tei:publicationStmt/tei:address/tei:addrLine[1]"/> 
			</p>
			<!--pubblicazione-->
			<p>
				<b>
					Collocazione specifica:
				</b>
				<xsl:value-of select="tei:sourceDesc/tei:msDesc/tei:msIdentifier"/> 
			</p>
		</div>
		<div class="column1">
			<!--Trascrittore-->
			<p>
				<b>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:resp"/>			
				</b>
				<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name"/>
			</p>
			<!--Codificatore-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:resp"/>
				</b>
				<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name"/> 
			</p>
			<!--Compilatore-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:resp"/>
				</b>   
				<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:name"/>
			</p>
		</div>
		<div class="column1">
			<!--Responsabile scientifico -->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:resp"/>
				</b>
				<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[1]"/> , 
				<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[2]"/>
			</p>
			<!--Funzionario responsabile-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:resp"/>
				</b>
				<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:name"/>
			</p> 
		</div>
		<p id="licence">
			<b><xsl:value-of select="tei:publicationStmt/tei:availability"/></b> 
		</p>   
    </xsl:template>

</xsl:stylesheet> 

