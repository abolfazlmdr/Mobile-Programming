import { Component } from '@angular/core';
import { IonicModule } from '@ionic/angular';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  standalone: true,
  imports: [IonicModule, FormsModule, CommonModule]
})
export class HomePage {
  studentName = '';
  students: string[] = [];

  addStudent(): void {
    const name = this.studentName.trim();
    if (name.length === 0) return;
    this.students.push(name);
    this.studentName = '';
  }
}
