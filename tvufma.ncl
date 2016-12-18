<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase id="regionBase1">
			<region height="100.00%" id="backgroundReg" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
			</region>
			<region height="7.50%" id="logoReg" left="1.64%" top="6.04%" width="9.72%" zIndex="2">
			</region>
			<region height="53.54%" id="screenReg" left="1.64%" top="13.75%" width="53.40%" zIndex="3">
			</region>
			<region height="23.54%" id="optionsReg" left="0.00%" top="74.58%" width="55.15%" zIndex="4">
			</region>
			<region height="9.79%" id="qrcodeReg" left="22.01%" top="78.96%" width="6.09%" zIndex="5">
			</region>
			<region height="6.67%" id="titleinfoReg" left="56.21%" top="13.75%" width="43.79%" zIndex="6">
			</region>
			<region height="57.29%" id="infoReg" left="56.21%" top="20.42%" width="43.79%" zIndex="7">
			</region>
			<region height="44.79%" id="info2Reg" left="56.21%" top="20.42%" width="43.79%" zIndex="7">
			</region>
			<region height="5.62%" id="infovideoReg" left="1.64%" top="67.29%" width="53.40%" zIndex="8">
			</region>
			<region height="5.62%" id="optionsbuttonReg" left="1.05%" top="89.17%" width="3.75%" zIndex="9">
			</region>
			<region height="4.38%" id="infobuttonReg" left="87.35%" top="89.38%" width="3.28%" zIndex="10">
			</region>
			<region height="4.38%" id="navbuttonReg" left="68.85%" top="81.04%" width="3.28%" zIndex="11">
			</region>
			<region height="4.38%" id="backbuttonReg" left="78.34%" top="81.04%" width="3.28%" zIndex="12">
			</region>
			<region height="4.38%" id="finishbuttonReg" left="87.35%" top="81.25%" width="3.28%" zIndex="13">
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="backgroundDesc" region="backgroundReg">
			</descriptor>
			<descriptor id="logoDesc" region="logoReg">
			</descriptor>
			<descriptor id="screenDesc" region="screenReg">
			</descriptor>
			<descriptor id="optionsDesc" region="optionsReg">
			</descriptor>
			<descriptor id="qrcodeDesc" region="qrcodeReg">
			</descriptor>
			<descriptor id="titleinfoDesc" region="titleinfoReg">
			</descriptor>
			<descriptor id="infoDesc" region="infoReg">
			</descriptor>
			<descriptor id="info2Desc" region="info2Reg">
			</descriptor>
			<descriptor id="navbuttonDesc" region="navbuttonReg">
			</descriptor>
			<descriptor id="backbuttonDesc" region="backbuttonReg">
			</descriptor>
			<descriptor id="finishbuttonDesc" region="finishbuttonReg">
			</descriptor>
			<descriptor id="infobuttonDesc" region="infobuttonReg">
			</descriptor>
		</descriptorBase>
		<connectorBase id="connectorBase1">
			<importBase alias="conEx" documentURI="causalConnBase.ncl">
			</importBase>
		</connectorBase>
	</head>
	<body id="body1">
		<port component="animation" id="entry">
		</port>
		<media descriptor="backgroundDesc" id="background" src="media/tvufma_BG.png">
		</media>
		<media descriptor="logoDesc" id="logo" src="media/tvufma_logo.png">
		</media>
		<media descriptor="screenDesc" id="animation" src="media/video.mp4">
			<property name="bounds">
			</property>
		</media>
		<media descriptor="qrcodeDesc" id="qrcode" src="media/qrcode_ufma.jpg">
		</media>
		<media descriptor="titleinfoDesc" id="titleinfo" src="media/tvufma_BOX_RIGHTtitle.png">
		</media>
		<media descriptor="infoDesc" id="info" src="media/tvufma_MAPA_HOME_FINAL.png">
		</media>
		<media descriptor="info2Desc" id="info2" src="media/creditos.png">
		</media>
		<media descriptor="navbuttonDesc" id="navbutton" src="media/tvufma_BOTAO_NAVEGAR_LADOS.png">
		</media>
		<media descriptor="backbuttonDesc" id="backbutton" src="media/tvufma_BOTAO_VOLTAR.png">
		</media>
		<media descriptor="finishbuttonDesc" id="finishbutton" src="media/tvufma_BOTAO_SAIR.png">
		</media>
		<media descriptor="infobuttonDesc" id="infobutton" src="media/tvufma_BOTAO_INFO.png">
		</media>
		<link id="lMusic" xconnector="conEx#onBeginStart_Delay">
			<bind component="animation" role="onBegin">
				<bindParam name="delay" value="1s">
				</bindParam>
			</bind>
			<bind component="background" role="start">
			</bind>
			<bind component="logo" role="start">
			</bind>
			<bind component="qrcode" role="start">
				<bindParam name="delay" value="1s">
				</bindParam>
			</bind>
			<bind component="titleinfo" role="start">
			</bind>
			<bind component="info" role="start">
				<bindParam name="delay" value="1s">
				</bindParam>
			</bind>
			<bind component="navbutton" role="start">
			</bind>
			<bind component="backbutton" role="start">
			</bind>
			<bind component="finishbutton" role="start">
			</bind>
			<bind component="infobutton" role="start">
			</bind>
		</link>
		<link id="lAdvert" xconnector="conEx#onKeySelectionStopSet_varStart">
			<bind component="infobutton" role="onSelection">
				<bindParam name="keyCode" value="RED">
				</bindParam>
			</bind>
			<bind component="info" role="stop">
			</bind>
			<bind component="animation" interface="bounds" role="set">
				<bindParam name="varset" value="1.64%,13.75%,53.40%,53.54%">
				</bindParam>
			</bind>
			<bind component="info2" role="start">
			</bind>
		</link>
		<link id="lBegin" xconnector="conEx#onKeySelectionStopSet_varStart">
			<bind component="finishbutton" role="onSelection">
				<bindParam name="keyCode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="info2" role="stop">
			</bind>
			<bind component="animation" interface="bounds" role="set">
				<bindParam name="varset" value="1.64%,13.75%,53.40%,53.54%">
				</bindParam>
			</bind>
			<bind component="info" role="start">
			</bind>
		</link>
		<link id="lEnd" xconnector="conEx#onEndStop">
			<bind component="animation" role="onEnd">
			</bind>
			<bind component="background" role="stop">
			</bind>
			<bind component="logo" role="stop">
			</bind>
			<bind component="qrcode" role="stop">
			</bind>
			<bind component="titleinfo" role="stop">
			</bind>
			<bind component="info" role="stop">
			</bind>
		</link>
	</body>
</ncl>
