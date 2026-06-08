	// JScript source code
function togglefaq()
{
	if (toggle.checked == true)
	{
		expandfaq();
	}
	else
	{
		contractfaq();
	}
}

function expandfaq()
{
	var faqitem = document.all.item("faqitem");
	if (faqitem != null)
	{
		if (faqitem.length != null)
		{
			for (i=0; i<faqitem.length; i++)
			{
				faqitem(i).style.display = "inline";                                                                               
			}                                 
		}                                            
	}
}

function contractfaq()
{
	var faqitem = document.all.item("faqitem");
	var faq = document.all.item("faq");
	if (faq != null)
	{
		for (i=0; i<faq.length; i++)
		{
			faq(i).style.color = "#666666";                                                                               
		}
	}
	if (faqitem != null)
	{
		if (faqitem.length != null)
		{
			for (i=0; i<faqitem.length; i++)
			{
				faqitem(i).style.display = "none";
			}                                 
		}                                            
	}
}

function getPar(o) 
{
	var ele = new Object();
	ele = findDIV(o);
	
	if (ele != null)
	{
		var oA = ele.children.item(1);
		if (oA.style.display == "inline")
		{
			oA.style.display = "none";
			o.style.color = "#666666";
		}
		else
		{
			oA.style.display = "inline";
		} 
	}
}

function findDIV(x)
{
	var oDiv = document.all.tags("DIV");
	var iDiv;
	var out = null;
	
	if (oDiv != null)
	{
		iDiv = oDiv.length;
		for (var i=0; i<iDiv; i++)
		{
			if(oDiv[i].contains(x))
			{
				out = oDiv[i];
			}
		}
		
		return out;
	}
}

function overState(obj)
{
	obj.currentColor = obj.style.color;
	obj.style.color = "#0033FF";
	obj.style.cursor = "hand";
}

function outState(obj)
{
	if ("#0033ff" == obj.style.color)
	{
		obj.style.color = obj.currentColor;
	}
}