import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEFF6FF),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 48),
                  _buildLogo(),
                  const SizedBox(height: 16),
                  const Text(
                    '내꿈은육퇴',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101828),
                      letterSpacing: 0.37,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '우리 아기 성장 기록',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6A7282),
                      letterSpacing: -0.31,
                    ),
                  ),
                  const SizedBox(height: 64),
                  _buildSocialButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFFFEE500),
                    icon: const Icon(
                      Icons.chat_bubble,
                      size: 24,
                      color: Color(0xFF3C1E1E),
                    ),
                    label: '카카오로 시작하기',
                    textColor: const Color(0xFF101828),
                  ),
                  const SizedBox(height: 16),
                  _buildSocialButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    borderColor: const Color(0xFFE5E7EB),
                    icon: const Text(
                      'G',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4285F4),
                      ),
                    ),
                    label: 'Google로 시작하기',
                    textColor: const Color(0xFF101828),
                  ),
                  const SizedBox(height: 16),
                  _buildSocialButton(
                    onPressed: () {},
                    backgroundColor: Colors.black,
                    icon: const Icon(Icons.apple, size: 24, color: Colors.white),
                    label: 'Apple로 시작하기',
                    textColor: Colors.white,
                  ),
                  const SizedBox(height: 32),
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF6A7282),
                      ),
                      children: const [
                        TextSpan(text: '로그인하면 '),
                        TextSpan(
                          text: '서비스 약관',
                          style: TextStyle(color: Color(0xFF155DFC)),
                        ),
                        TextSpan(text: '과 '),
                        TextSpan(
                          text: '개인정보 처리방침',
                          style: TextStyle(color: Color(0xFF155DFC)),
                        ),
                        TextSpan(text: '에 동의하는 것으로 간주됩니다.'),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 112,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF2B7FFF), Color(0xFF4F39F6)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 25,
            offset: const Offset(0, 20),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: const Center(
        child: Icon(Icons.child_care, size: 64, color: Colors.white),
      ),
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onPressed,
    required Color backgroundColor,
    Color? borderColor,
    required Widget icon,
    required String label,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 2,
          shadowColor: Colors.black.withValues(alpha: 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: borderColor != null
                ? BorderSide(color: borderColor, width: 2)
                : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor,
                letterSpacing: -0.31,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
