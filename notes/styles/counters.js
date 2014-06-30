/*
Counters for examples, figures, and tables.

Christopher Potts, Stanford Linguistics
LING7800-007: Computational Pragmatics 

LSA Linguistic Institute 2011: Language in the World
University of Colorado at Boulder
*/

var tabNumber = 1;
var tabIndex = {};

var figNumber = 1;
var figIndex = {};

var exNumber = 1;
var exIndex = {};

var probNumber = 1;
var probIndex = {};

function runCounters(headers){
    tabCounter();
    figCounter();
    exCounter();
    probCounter();
}

function exCounter(){
    var index = 1;
    var exs = document.getElementsByClassName('ex');
    for(var i=0; i < exs.length; i++){
	ex = exs[i];
	ex.start = index;
	lis = ex.getElementsByTagName('li')
	index = index + lis.length
    }
}

function tabCounter(){
    genericCounter('tabcounter', 'tabref', tabNumber, tabIndex)
}

function figCounter(){
    genericCounter('figcounter', 'figref', figNumber, figIndex)
}

function probCounter(){
    genericCounter('probcounter', 'probref', probNumber, probIndex)
}

function genericCounter(counter, ref, num, index){
    var labels = document.getElementsByClassName(counter);
    for(var i=0; i < labels.length; i++){
	label = labels[i];
	label.innerHTML = num;
	index[label.id] = num;
	num = num + 1;
    }
    var refs = document.getElementsByClassName(ref);
    for(var i=0; i < refs.length; i++){
	ref = refs[i];
	ref.innerHTML = index[ref.innerHTML];
    }
}

function hideReveal(id) {
    if ( document.getElementById(id).style.display == "block" ) {
	document.getElementById(id).style.display = "none"
    }
    else {
	document.getElementById(id).style.display = "block"
    }
}