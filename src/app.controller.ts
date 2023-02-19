import { Controller, Get, Post, Req } from '@nestjs/common';
import { AppService } from './app.service';
import { Request } from 'express';
import { UserService } from './user.service';
import { account_user as UserModel } from '@prisma/client';

BigInt.prototype['toJSON'] = function () {
  return this.toString();
};

@Controller()
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly userService: UserService,
  ) {}

  @Get()
  async getHello(@Req() request: Request): Promise<UserModel[]> {
    return await this.userService.users({});
  }

  @Post('/cd/')
  async postHello(@Req() request: Request): Promise<UserModel> {
    const { phone } = request.body;
    const user = await this.userService.createUser({
      email: '',
      password: '',
      is_superuser: false,
      created_at: new Date(),
      updated_at: new Date(),
      role: 0,
      is_staff: false,
      is_active: false,
      date_joined: new Date(),
      is_verified: false,
      pin: '',
      phone: phone,
      coupon_balance: 200,
      cashback_balance: 100,
      is_deleted: false,
    });
    return user;
  }
}

@Controller('product')
export class ProductController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(@Req() request: Request): string {
    return request.url;
  }
}
