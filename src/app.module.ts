import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { ProductController } from './app.controller';
import { AppService } from './app.service';
import { UserService } from './user.service';
import { PrismaService } from './prisma.service';

@Module({
  imports: [],
  controllers: [AppController, ProductController],
  providers: [AppService, UserService, PrismaService],
})
export class AppModule {}
