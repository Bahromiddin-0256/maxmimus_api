import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { account_user, Prisma } from '@prisma/client';

@Injectable()
export class UserService {
  constructor(private prisma: PrismaService) {}

  async user(
    userWhereUniqueInput: Prisma.account_userWhereUniqueInput,
  ): Promise<account_user | null> {
    return this.prisma.account_user.findUnique({
      where: userWhereUniqueInput,
    });
  }

  async users(params: {
    skip?: number;
    take?: number;
    cursor?: Prisma.account_userWhereUniqueInput;
    where?: Prisma.account_userWhereInput;
    orderBy?: Prisma.account_userOrderByWithRelationInput;
    select?: Prisma.account_userSelect;
  }): Promise<account_user[]> {
    const { skip, take, cursor, where, orderBy, select } = params;
    return this.prisma.account_user.findMany({
      skip,
      take,
      cursor,
      where,
      orderBy,
      select: {
        id: true,
        phone: true,
        last_login: true,
        is_superuser: true,
        created_at: true,
        updated_at: true,
        password: true,
        is_active: true,
        date_joined: true,
        device: true,
        ip_address: true,
        is_verified: true,
        last_generated: true,
        full_name: true,
        address: true,
        pin: true,
        avatar: true,
        district_id: true,
        cashback_balance: true,
        uuid: true,
        is_deleted: true,
        coupon_balance: true,
        language: true,
        role: true,
        email: true,
        is_staff: true,
      },
    });
  }

  async createUser(
    data: Prisma.account_userCreateInput,
  ): Promise<account_user> {
    return this.prisma.account_user.create({
      data,
    });
  }

  async updateUser(params: {
    where: Prisma.account_userWhereUniqueInput;
    data: Prisma.account_userUpdateInput;
  }): Promise<account_user> {
    const { where, data } = params;
    return this.prisma.account_user.update({
      data,
      where,
    });
  }

  async deleteUser(
    where: Prisma.account_userWhereUniqueInput,
  ): Promise<account_user> {
    return this.prisma.account_user.delete({
      where,
    });
  }
}
