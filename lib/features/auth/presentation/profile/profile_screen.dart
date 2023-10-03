import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/constants/colors.dart';

import '../../domain/auth_user.dart';
import 'profile_controller.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(profileControllerProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kColorBackground,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              itemBuilder: (context) => stateAsync.when(
                data: (data) {
                  return [
                    PopupMenuItem(
                      child: const Text('Sunting Akun'),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text('Keluar'),
                      onTap: () =>
                          ref.read(profileControllerProvider.notifier).logout(),
                    ),
                  ];
                },
                error: (error, stackTrace) => [],
                loading: () => [],
              ),
            ),
          ],
        ),
        body: stateAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => const Center(child: Text('error')),
          data: (state) {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildProfileHeader(context, state.user),
                const SizedBox(height: 32),
                ..._buildMenu(context)
              ],
            );
          },
        ),
      ),
    );
  }

  _buildMenu(BuildContext context) {
    return [
      MenuTile(
        color: const Color(0xFFFF6B6B),
        icon: Icons.local_hospital,
        title: 'Pill Count',
        onClick: () {
          context.pushNamed('pillcount');
        },
      ),
      const SizedBox(height: 16),
      MenuTile(
        color: kColorSecondary,
        icon: Icons.event_note_outlined,
        title: 'Test',
        onClick: () {
          context.pushNamed('test');
        },
      )
    ];
  }

  _buildProfileHeader(BuildContext context, AuthUser? user) {
    if (user == null) return Container();
    return user.map(
      signedIn: (userSignedIn) => Column(
        children: [
          CircleAvatar(
            radius: 56,
            foregroundImage: userSignedIn.avatar != null
                ? NetworkImage(userSignedIn.avatar!)
                : null,
            backgroundColor: kColorPrimaryTint4,
            child:
                const Icon(Icons.person, color: kColorPrimaryTint3, size: 56),
          ),
          const SizedBox(height: 16),
          Text(
            userSignedIn.name,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            userSignedIn.email,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: kColorNeutral100),
          ),
        ],
      ),
      signedOut: (value) => Container(),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile(
      {Key? key,
      required this.color,
      required this.icon,
      this.onClick,
      required this.title})
      : super(key: key);
  final Color color;
  final IconData icon;
  final VoidCallback? onClick;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: kColorSecondary),
            ),
          ),
          const Icon(Icons.chevron_right_rounded, color: kColorSecondary),
        ],
      ),
    );
  }
}
