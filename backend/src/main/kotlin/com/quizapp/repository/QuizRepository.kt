package com.quizapp.repository

import com.quizapp.entity.Quiz
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
interface QuizRepository: JpaRepository<Quiz, Long>
