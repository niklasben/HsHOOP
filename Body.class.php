<?php

include_once("Dimensions.class.php");
include_once("Stiffness.class.php");
include_once("MaterialMix.class.php");
include_once("JoiningProcess.class.php");
include_once("ProductionData.class.php");

class CarBody {
	private $manufacturer;
	private $name;
	private $modelYear;
	private $dimensions;
	private $stiffness;
	private $materialMix; 
	private $joiningProcess;
	private $productionData;

	static public suche($m, $n, $y = date("Y")) { 
		return new Body; 
	} 
	static public sucheNachParameter($parameters) { 
	} 
	public getValues() { 
		var $retVal = array();
		$retVal = array_merge($retVal, ["manufacturer"=>$this->manufacturer]);
		$retVal = array_merge($retVal, ["name"=>$this->name]);
		$retVal = array_merge($retVal, ["modelYear"=>$this->modelYear]);
		$retVal = array_merge($retVal, $this->dimensions->getValues());
		$retVal = array_merge($retVal, $this->stiffness->getValues());
		$retVal = array_merge($retVal, $this->materialMix->getValues());
		$retVal = array_merge($retVal, $this->joiningProcess->getValues());
		$retVal = array_merge($retVal, $this->productionData->getValues());
		return $retVal;
		}
	} 
?>