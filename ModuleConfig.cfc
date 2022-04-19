component {

	this.title       = "pdfbox.cfc";
	this.author      = "Matthew J. Clemente";
	this.webURL      = "https://github.com/mjclemente/pdfbox.cfc";
	this.description = "Utilize the PDFBox Java library to manipulate PDFs.";
    // Module Dependencies That Must Be Loaded First, use internal names or aliases
	this.dependencies      = [ "cbjavaloader" ];

	function configure(){
		settings = {};
	}

	function onLoad(){
		binder.map( "pdfbox@pdfboxcfc" ).to( "#moduleMapping#.pdfbox" );
        wireBox.getInstance( "loader@cbjavaloader" ).appendPaths( modulePath & "/lib" );
	}

}
