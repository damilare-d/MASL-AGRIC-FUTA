import 'package:flutter/material.dart';
import 'package:masl_futa_agric/pages/farm_pages/add_new_tasks_page.dart';
import 'package:masl_futa_agric/pages/farm_pages/bloc/bloc/farm_bloc_bloc.dart';
import 'package:masl_futa_agric/pages/farm_pages/model/farm_model.dart';

class FullFarmViewPage extends StatelessWidget {
  final FarmDetails farm;

  const FullFarmViewPage(this.farm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(farm.farmName),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            FarmWeatherCard(farm: farm),
            const TabBar(tabs: [Tab(text: 'Overview'), Tab(text: 'Task')]),
            Expanded(
              child: TabBarView(
                children: [
                  const Center(child: Text('Overview')),
                  TaskPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FarmWeatherCard extends StatelessWidget {
  final FarmDetails farm;

  FarmWeatherCard({super.key, required this.farm});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container showing weather information
      // Add other farm information here
    );
  }
}


class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Ongoing'),
              Tab(text: 'Completed'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Pending Tasks Page
                TaskListPage(status: 'Pending'),
                // Ongoing Tasks Page
                TaskListPage(status: 'Ongoing'),
                // Completed Tasks Page
                TaskListPage(status: 'Completed'),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              // Navigate to the Add New Task Page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNewTaskPage()),
              );
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class TaskListPage extends StatelessWidget {
  final String status;

  TaskListPage({required this.status});

  @override
  Widget build(BuildContext context) {
    // Add logic to fetch and display tasks based on the status
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          // Task container with name, deadline, and priority
        );
      },
    );
  }
}

