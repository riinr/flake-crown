{
  description = ''Hex clock made in SDL and Nim'';
  inputs.src-hexclock-master.flake = false;
  inputs.src-hexclock-master.type = "github";
  inputs.src-hexclock-master.owner = "RainbowAsteroids";
  inputs.src-hexclock-master.repo = "hexclock";
  inputs.src-hexclock-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, src-hexclock-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hexclock-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hexclock-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}