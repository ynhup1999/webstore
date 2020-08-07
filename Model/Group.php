<?php
include_once("DataProvider.php");
class Group{
	private $da;
	function __construct(){
		$this->da = new DataProvider();
	}
	function getGroupManage(){
		$sql = "Select * from groups";
		return $this->da->FetchAll($sql);
	}
	function GetGroupByID($groupID){
		$sql="Select GroupID,GroupName from Groups where GroupID=$groupID";
		return $this->da->Fetch($sql);
	}
	function GetGroups(){
		$sql="Select GroupID,GroupName from Groups";
		return $this->da->FetchAll($sql); 
	}
	function DeleteGroup($groupID){
		$sql="Delete from Groups where GroupID=$groupID";
		return $this->da->ExecuteQuery($sql);
	}
	function InsertGroup($groupName){
		$sql="Insert into Groups (GroupName) values('$groupName')";
		return $this->da->ExecuteQuery($sql);
	}
	function UpdateGroup($groupID,$groupName){
		$sql="Update Groups set GroupName='$groupName' where GroupID=$groupID";
		return $this->da->ExecuteQuery($sql);
	}
	
	function __destruct(){
		unset($this->da);
	}
}
?>