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
  }): Promise<account_user[]> {
    const { skip, take, cursor, where, orderBy } = params;
    return this.prisma.account_user.findMany({
      skip,
      take,
      cursor,
      where,
      orderBy,
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
