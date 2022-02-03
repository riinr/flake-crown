{
  description = ''Perlin noise and Simplex noise generation'';
  inputs.src-perlin-0_6_0.flake = false;
  inputs.src-perlin-0_6_0.type = "github";
  inputs.src-perlin-0_6_0.owner = "Nycto";
  inputs.src-perlin-0_6_0.repo = "PerlinNim";
  inputs.src-perlin-0_6_0.ref = "refs/tags/0.6.0";
  
  outputs = { self, nixpkgs, src-perlin-0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-perlin-0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-perlin-0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}