# 🧩 Memory Game

A time-based game built with Laravel 11. The goal is to match all pairs of images within 5 minutes.

## 🚀 Features

- **Authentication:** players enter their name and can add new images to the database.
- **Gameplay:** players are shown 8 random pairs of images for 5 seconds before starting the game on a 4x4 grid.
- **Game Mechanics:**
  - Players flip images one at a time.
  - Matching images stay revealed.
  - A timer at the top shows the remaining time.
  - The score is displayed to the left of the timer.
- **Game Over:** after time runs out, the results screen shows the player's score and a leaderboard sorted by points.
- **Leaderboard:** players can beat their previous scores, and the database updates automatically.

## 🖥️ Requirements

- PHP 8.2 or higher
- Laravel 11
- MySQL 8.0+
- Composer

## 📦 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/username/memory-game.git
   cd memory-game
   ```
2. Install Laravel dependencies:
   ```bash
   composer install
   ```
3. Configure the `.env` file to connect to your MySQL database.
4. Run migrations to create database tables:
   ```bash
   php artisan migrate
   ```
5. Start the server:
   ```bash
   php artisan serve
   ```
6. Open [http://localhost:8000](http://localhost:8000) in your browser.

## 🎮 Screenshots

Add gameplay screenshots for better visualization:

- **Login Screen:** ![Auth Screen](screenshots/auth-screen.png)
- **Game Board:** ![Game Board](screenshots/game-board.png)
- **Leaderboard:** ![Leaderboard](screenshots/leaderboard.png)

## ⚙️ How to Play

1. Register by entering your name.
2. Add images to the database.
3. Start the game and try to match all pairs within 5 minutes.
4. Compare your results with other players on the leaderboard.

## 🏆 Scoring System

- **+1 point for each revealed cell.**
- **Maximum score: 16 points per game.**

## 🚩 Troubleshooting

- **Database connection error:**
  - Check your `.env` configuration.
  - Ensure the MySQL server is running.

- **Migration issues:**
  - Run `php artisan migrate:fresh` to reset the database.

- **Page not loading after login:**
  - Clear session cache: `php artisan config:cache && php artisan cache:clear`.

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make your changes and commit them (`git commit -m 'Added new feature'`).
4. Push your changes to GitHub (`git push origin feature/new-feature`).
5. Create a Pull Request.

## 📄 License

This project is licensed under the MIT License.

## 📬 Contact

If you have any questions or suggestions:

- **Email:** your.email@example.com
- **GitHub:** [github.com/username](https://github.com/username)

