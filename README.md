# openAI-gym Reversi/Othello

This is original "Reversi env" for reinforcement learning.

## Installation

```sh
pip install .
```

## Usage
1. Install this package.
2. Import `gym_reversi`

## Script

```Python
import gym
import gym_reversi
import random
import numpy as np
env = gymnasium.make('Reversi8x8-v0')
env.reset()
for i_episode in range(20):
    observation = env.reset()
    for t in range(100):
        enables = env.possible_actions
        # if nothing to do ,select pass
        if len(enables)==0:
            action = env.board_size**2 + 1
        # random select (update learning method here)
        else:
            action = random.choice(enables)
        observation, reward, done, info = env.step(action)
        env.render()
        if done:
            print("Episode finished after {} timesteps".format(t+1))
            black_score = len(np.where(env.state[0,:,:]==1)[0])
            print(black_score)
            break
```

```
      1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |
-------------------------------------------------------
1  |  B  |  B  |  B  |  B  |  B  |  B  |  B  |  B  |
-------------------------------------------------------
2  |  B  |  W  |  W  |  B  |  B  |  W  |  W  |  B  |
-------------------------------------------------------
3  |  B  |  W  |  W  |  W  |  B  |  B  |  W  |  B  |
-------------------------------------------------------
4  |  B  |  W  |  B  |  W  |  W  |  B  |  B  |  B  |
-------------------------------------------------------
5  |  B  |  W  |  W  |  B  |  W  |  W  |  B  |  B  |
-------------------------------------------------------
6  |  B  |  W  |  B  |  W  |  W  |  B  |  W  |  B  |
-------------------------------------------------------
7  |  B  |  W  |  B  |  B  |  B  |  B  |  B  |  B  |
-------------------------------------------------------
8  |  B  |  W  |  W  |  W  |  W  |  W  |  W  |  B  |
-------------------------------------------------------
```
