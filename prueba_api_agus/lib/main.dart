import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(
  child: const MyApp()
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_sharp)
        ),
        title: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: (){},
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://wallpapersmug.com/download/1920x1080/3be6a3/lionel-messi-celebrity-player.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(width: 10),
              Text("Mariano"),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallScreen()),
              );
            },
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                reverse: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: MiBurbuja(theme: theme),
                    );
                  } else {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: SuBurbuja(theme: theme),
                    );
                  }
                },
              ),
            ),
            _buildMessageInput(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput(ColorScheme theme) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      color: theme.surface,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Escribe un mensaje...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          IconButton(
            icon: Icon(Icons.send, color: theme.primary),
            onPressed: () {
              // Aquí iría la lógica para enviar el mensaje
            },
          ),
        ],
      ),
    );
  }
}

class MiBurbuja extends StatelessWidget {
  const MiBurbuja({
    super.key,
    required this.theme,
  });

  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: theme.primary,
      ),
      child: Text(
        "Hola, ¿cómo estás?",
        style: TextStyle(color: theme.onPrimary),
      ),
    );
  }
}

class SuBurbuja extends StatelessWidget {
  const SuBurbuja({
    super.key,
    required this.theme,
  });

  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: theme.secondary,
      ),
      child: Text(
        "¡Hola! Estoy bien, gracias.",
        style: TextStyle(color: theme.onSecondary),
      ),
    );
  }
}

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.onPrimary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://wallpapersmug.com/download/1920x1080/3be6a3/lionel-messi-celebrity-player.jpg",
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Mariano",
                    style: TextStyle(fontSize: 24,),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Llamando...",
                    style: TextStyle(fontSize: 16,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CallButton(icon: Icons.mic, color: theme.primary,),
                  CallButton(icon: Icons.volume_up, color: theme.primary,),
                  CallButton(icon: Icons.videocam, color: theme.primary,),
                  CallButton(
                    icon: Icons.call_end,
                    color: theme.error,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const CallButton({
    super.key,
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(16),
        backgroundColor: color.withValues(alpha: 255),
      ),
      child: Icon(icon, color: color.withRed(255)),
    );
  }
}