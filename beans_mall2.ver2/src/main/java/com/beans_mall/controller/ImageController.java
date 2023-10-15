package com.beans_mall.controller;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Value;

import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class ImageController {

	@Value("${upload.path}")
	private String uploadPath = "C:/upload"; // 업로드된 이미지의 기본 경로를 설정합니다.

	@GetMapping("/images/{fileName:.+}")
	public ResponseEntity<Resource> serveImage(@PathVariable String fileName) {
		try {
			Path imagePath = Paths.get(uploadPath, fileName);
			Resource resource = new UrlResource(imagePath.toUri());

			// 리소스가 존재하는지 확인
			if (resource.exists()) {
				return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(resource);
			} else {
				return ResponseEntity.notFound().build();
			}
		} catch (MalformedURLException e) {
			// 에러 처리
			return ResponseEntity.notFound().build();
		}
	}
}
