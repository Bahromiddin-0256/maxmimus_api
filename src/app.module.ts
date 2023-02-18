import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { ProductController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [],
  controllers: [AppController, ProductController],
  providers: [AppService],
})
export class AppModule {}