/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.service;

import model.entity.Admin;
import model.repository.AdminRepository;

/**
 *
 * @author ADMIN
 */
public class AdminService {
    public static Admin getLogin(String email, String password){
        return AdminRepository.getLoginAdmin(email, password);
    }
}
