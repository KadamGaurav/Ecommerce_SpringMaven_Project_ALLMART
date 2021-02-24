package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/showSuppliers")
	public String showSuppliers(Model m)
	{
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList",supplierList);
		return "Supplier";
	}
	
	@RequestMapping(value="/insertSupplier", method=RequestMethod.POST)
	public String insertSupplier(@RequestParam("supplierId") int supplierId, @RequestParam("supplierName") String supplierName,@RequestParam("supplierAddr") String supplierAddr,Model m)
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierAddr(supplierAddr);
		
		supplierDAO.addSupplier(supplier);
		
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList",supplierList);
		return "Supplier";
	}
	
	@RequestMapping("/deleteSupplier/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m)
	{
		System.out.println("I am in delete supplier controller");
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		
		supplierDAO.deleteSupplier(supplier);
		
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList",supplierList);
		return "Supplier";	
	}
	
	@RequestMapping("/editSupplier/{supplierId}")
	public String editSupplier(@PathVariable("supplierId") int supplierId,Model m)
	{
		System.out.println("I am in edit Supplier controller");
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		
		m.addAttribute("supplier",supplier);
		
		supplierDAO.updateSupplier(supplier);
		
		return "UpdateSupplier";
	}
	
	@RequestMapping(value="/updateSupplier", method=RequestMethod.POST)
	public String updateSupplier(@RequestParam("supplierId")int supplierId,@RequestParam("supplierName") String supplierName,@RequestParam("supplierAddr") String supplierAddr,Model m)
	{
		System.out.println("I am in the update Supplier controller");
		Supplier supplier=new Supplier();
		supplier.setSupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierAddr(supplierAddr);
		
		
		supplierDAO.updateSupplier(supplier);
		
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList",supplierList);
		return "Supplier";	
		
	}

}
