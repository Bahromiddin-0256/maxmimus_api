import { ApiProperty } from '@nestjs/swagger';

export class UserCreate {
  @ApiProperty()
  phone: string;
}
