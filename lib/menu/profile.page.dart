import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab (Video dan Disukai)
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "nama_pengguna",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    // Foto Profil
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb",
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Username / Nama Akun
                    const Text(
                      "@nama_pengguna",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Statistik (Mengikuti, Pengikut, Suka)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        _ProfileStat(count: "120", label: "Mengikuti"),
                        _ProfileStat(count: "4.5K", label: "Pengikut"),
                        _ProfileStat(count: "50.2K", label: "Suka"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Tombol Edit Profil & Bookmark
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                          ),
                          child: const Text(
                            "Edit Profil",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                          ),
                          child: const Icon(Icons.bookmark_border,
                              color: Colors.black, size: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Bio Singkat
                    const Text(
                      "Belajar Flutter bersama SMK 🚀\nKonten seputar teknologi & koding.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              // Tab Bar ala TikTok
              const TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.grid_on)),
                  Tab(icon: Icon(Icons.favorite_border)),
                ],
              ),
              // Isi Konten Tab (Grid Video)
              Expanded(
                child: TabBarView(
                  children: [
                    _buildVideoGrid(),
                    _buildVideoGrid(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper untuk grid video
  Widget _buildVideoGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(2),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 kolom ke samping
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 3 / 4, // Rasio tinggi video vertikal
      ),
      itemCount: 9, // Jumlah dummy video
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey[300],
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1542751110-97427bbecf20",
                fit: BoxFit.cover,
              ),
              // Jumlah views di pojok kiri bawah
              Positioned(
                bottom: 6,
                left: 6,
                child: Row(
                  children: const [
                    Icon(Icons.play_arrow, color: Colors.white, size: 16),
                    Text(
                      "1.2K",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Widget kecil untuk statistik profil
class _ProfileStat extends StatelessWidget {
  final String count;
  final String label;

  const _ProfileStat({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}