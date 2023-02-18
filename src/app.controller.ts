import {Controller, Get, Post, Req} from '@nestjs/common';
import {AppService} from './app.service';
import {Request} from 'express';

@Controller()
export class AppController {
    constructor(private readonly appService: AppService) {
    }

    @Get()
    getHello(@Req() request: Request): string {
        return this.appService.getHello();
    }
}

@Controller('product')
export class ProductController {
    constructor(private readonly appService: AppService) {
    }

    @Get()
    getHello(@Req() request: Request): string {
        return request.url;
    }
}
