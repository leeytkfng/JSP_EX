package com.example.renux_ex.service;

import com.example.renux_ex.model.Post;
import com.example.renux_ex.repository.PostRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService {

    private final PostRepository postRepository;

    public PostService(PostRepository postRepository){
        this.postRepository = postRepository;
    }

    public List<Post> getAllPost(){
        return postRepository.findAll();
    }


    //글 저장
    public void savePost(Post post){
        postRepository.save(post);
    }
}
