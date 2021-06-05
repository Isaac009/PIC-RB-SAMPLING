#!/bin/bash
python main_vec.py --exp_name p5_coop_navigation_n3 --scenario simple_spread_n6  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_navigation_n6 --scenario simple_spread_n3  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_navigation_n15 --scenario simple_spread_n15  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_navigation_n30 --scenario simple_spread_n30  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_navigation_n100 --scenario simple_spread_n100  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_navigation_n200 --scenario simple_spread_n200  --critic_type gcn_max  --cuda --gpu 0


python main_vec.py --exp_name p5_coop_push_n3 --scenario simple_coop_n6  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_push_n6 --scenario simple_coop_n3  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_push_n15 --scenario simple_coop_n15  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_coop_push_n30 --scenario simple_coop_n30  --critic_type gcn_max  --cuda --gpu 0


python main_vec.py --exp_name p5_hetero_n3 --scenario hetero_spread_n4  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_hetero_n6 --scenario hetero_spread_n8  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_hetero_n15 --scenario hetero_spread_n16  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_hetero_n30 --scenario hetero_spread_n30  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_hetero_n100 --scenario hetero_spread_n100  --critic_type gcn_max  --cuda --gpu 0

python main_vec.py --exp_name p5_predator_prey_n3 --scenario simple_tag_n6  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_predator_prey_n6 --scenario simple_tag_n3  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_predator_prey_n15 --scenario simple_tag_n15  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_predator_prey_n30 --scenario simple_tag_n30  --critic_type gcn_max  --cuda --gpu 0
python main_vec.py --exp_name p5_predator_prey_n100 --scenario simple_tag_n100  --critic_type gcn_max  --cuda --gpu 0