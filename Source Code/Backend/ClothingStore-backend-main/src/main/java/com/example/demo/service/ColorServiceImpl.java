package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Color;
import com.example.demo.repository.ColorRepository;

@Service
public class ColorServiceImpl implements ColorService {
	@Autowired
	private ColorRepository colorRepository;
	@Override
	public List<Color> getColors() {
		return colorRepository.findAll();
	}
}
