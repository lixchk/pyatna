#include "controller.h"

GameController::GameController(QObject *parent) : QObject(parent)
{
}

GameBoard* GameController::getModel()
{
    return &gameBoard;
}
