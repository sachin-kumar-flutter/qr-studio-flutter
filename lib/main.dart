import 'package:flutter/material.dart';
import 'package:qr_code/generate_qr.dart';
import 'package:qr_code/scan_qr.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR Code Scanner and Generator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C63FF),
          brightness: Brightness.dark,
        ),
      ),
      home: const Homepage()
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Studio"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: Icon(
                Icons.qr_code,
                size: 204,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            _buildActionCard(
              context: context,
              icon: Icons.qr_code_scanner,
              title: "Scan QR Code",
              subtitle: "Scan a QR code using your camera",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScanQRCode()),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildActionCard(
              context: context,
              icon: Icons.qr_code_2,
              title: "Generate QR Code",
              subtitle: "Create a QR code from text",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => GenerateQRCode()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}