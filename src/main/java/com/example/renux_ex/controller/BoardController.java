package com.example.renux_ex.controller;

import com.example.renux_ex.model.Post;
import com.example.renux_ex.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;

@Controller
public class BoardController {

    private final PostService postService;

    public BoardController(PostService postService){
        this.postService = postService;
    }
    @GetMapping("/")
    public String home(Model model){
        List<Post> postList = postService.getAllPost();
        model.addAttribute("postList",postList);

        return "index";
    }

    @GetMapping("/write")
    public String writePage(){
        return "pages/write";
    }

    @PostMapping("/write")
    public String writePost(@RequestParam("title") String title,
                            @RequestParam("content") String content,
                            @RequestParam("name") String name ) {
             Post post = new Post(title,content,name,LocalDateTime.now());
             postService.savePost(post);
             return "redirect:/";
    }
}
