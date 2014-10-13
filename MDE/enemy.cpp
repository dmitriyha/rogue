#include "enemy.h"

Enemy::Enemy(){

}

/** \brief The Enemy primary weapon setter
*
*
*/

void Enemy::setPrimaryWeapon(Item* item){
	weapon = item;
}

/** \brief The Enemy level setter
*
*
*/


void Enemy::set_level(int lvl){
	level=lvl;
}

/** \brief the level getter
 *
 * \return the level of Enemy
 *
 */     


int Enemy::get_level(){
	return level;
}

Enemy::~Enemy(){

}