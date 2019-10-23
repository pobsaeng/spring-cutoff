package com.multibank.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.multibank.baseconfig.CurrentUser;
import com.multibank.baseconfig.UserPrincipal;
import com.multibank.util.AppConstants;

import javax.validation.Valid;
import java.net.URI;

@RestController
@RequestMapping("/api/polls")
public class PollController {

    @GetMapping
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<?> getPolls(@CurrentUser UserPrincipal currentUser,
                                                @RequestParam(value = "page", defaultValue = AppConstants.DEFAULT_PAGE_NUMBER) int page,
                                                @RequestParam(value = "size", defaultValue = AppConstants.DEFAULT_PAGE_SIZE) int size) {
    	System.out.println("page: " + page + ", size: " +size);
		return new ResponseEntity("This is paging & hasRole('USER')", HttpStatus.OK);
    }

    @PostMapping
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<?> createPoll() {
    	return new ResponseEntity("I have a hasRole('USER')", HttpStatus.OK);
    }

}
