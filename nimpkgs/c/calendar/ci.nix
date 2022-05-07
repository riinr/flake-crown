{ mkEffect, ...}: {
  calendar-master = mkEffect {
    effectScript = ''
      echo "Hello from effect sandbox"
      nix build
    '';
  };
}
