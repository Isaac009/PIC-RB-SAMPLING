import random
from collections import namedtuple
import numpy as np

# Taken from
# https://github.com/pytorch/tutorials/blob/master/Reinforcement%20(Q-)Learning%20with%20PyTorch.ipynb

Transition = namedtuple(
    'Transition', ('state', 'action', 'mask', 'next_state', 'reward'))


class ReplayMemory(object):

    def __init__(self, capacity):
        self.capacity = capacity
        self.memory = []
        self.position = 0
        self.experiences = []

    def push(self, *args):
        """Saves a transition."""
        if len(self.memory) < self.capacity:
            self.memory.append(None)
        self.memory[self.position] = Transition(*args)
        self.position = (self.position + 1) % self.capacity

    def sample(self, batch_size):
        return random.sample(self.memory, batch_size)
    
    def pairwise_cosine_sim(self, selected_obs, mini_batch):
        """
        A [batch x n x d] tensor of n rows with d dimensions
        B [batch x m x d] tensor of n rows with d dimensions

        returns:
        D [batch x n x m] tensor of cosine similarity scores between each point i<n, j<m
        """
        a = np.asarray(selected_obs)[0]
        rands = np.random.choice(np.arange(len(self.memory)), len(self.memory))
        for index in rands:
            b = np.asarray(self.memory[index][0])[0]
            cos_angle = a.dot(b) / (np.linalg.norm(a) * np.linalg.norm(b))
            if cos_angle < 0.5:
                self.experiences.append(self.memory[index])
            if len(self.experiences) >= mini_batch:
                break
            

    def getBatch(self, state, batch_size):
        if len(self.experiences) < batch_size:
            self.pairwise_cosine_sim(state, batch_size)
            return self.experiences
        else:
            return random.sample(self.memory, batch_size)

    def shuffle(self):
        random.shuffle(self.memory)

    def __len__(self):
        return len(self.memory)
