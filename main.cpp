#include <iostream>
#include "nlohmann/json.hpp"
#include <map>
#include <fstream>

struct Film
{
    std::string name;
    std::map<std::string, std::string> actors;
    int year{};
    std::string country;
    std::string studio;
    std::string director;
    std::string screenwriter;
    std::string producer;
};

nlohmann::json* readFilmsFromJsonFile(const std::string& path)
{
    std::cout << "Reading film data...\n";
    std::cout << "\t - Opening file...\n";
    std::ifstream file(path);
    auto* filmsDictionary = new nlohmann::json();
    if (file.is_open())
    {
        std::cout << "\t - Reading from JSON file [" << path << "]...\n";
        file >> *filmsDictionary;
        std::cout << "\t - Reading is finished.\n";
        file.close();
        std::cout << "\t - File is closed.\n";
    }
    return filmsDictionary;
}

std::vector<Film*>* convertJsonDictToVector(nlohmann::json* dictionary)
{
    auto* films = new std::vector<Film*>();
    for (const auto& jsonElement : dictionary->items())
    {
        Film* f = new Film();
        f->name = jsonElement.key();
        f->actors = jsonElement.value()["actors"];
        f->studio = jsonElement.value()["studio"];
        f->year = jsonElement.value()["year"];
        f->country = jsonElement.value()["country"];
        f->director = jsonElement.value()["director"];
        f->producer = jsonElement.value()["producer"];
        f->screenwriter = jsonElement.value()["screenwriter"];
        films->push_back(f);
    }
    return films;
}

void printFullFilmList(nlohmann::json* dictionary)
{
    std::cout << "Films in the dictionary:\n";
    for (auto& element : dictionary->items()) {
        std::cout << "\t - " << element.key() << "\n";
    }
}

void findActor(const std::string& name, std::vector<Film*>* films)
{
    std::cout << "Looking for an actor: " << name << "\n";
    std::cout << "\t - Result:\n";
    for (auto film : *films)
    {
        for (const auto& it : film->actors)
        {
            if (it.second.find(name) != std::string::npos)
            {
                std::cout << "\t\t - " << it.second << ", film: \"" << film->name << "\", role: " << it.first << "\n";
            }
        }
    }
}

int main() {
    std::cout << "+- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -+\n";
    std::cout << "| 32.5 Practical Work.Task 2. Film data analysis |\n";
    std::cout << "+- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -+\n\n";
    const std::string INPUT_PATH = "..\\films.json";
    nlohmann::json* filmsDictionary = readFilmsFromJsonFile(INPUT_PATH);
    printFullFilmList(filmsDictionary);
    std::vector <Film*>* films = convertJsonDictToVector(filmsDictionary);
    findActor("Oleg", films);
    findActor("Lyudmila", films);
    findActor("Chris", films);
    findActor("Taika", films);
    return 0;
}