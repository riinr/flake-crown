{
  description = ''Executable for finding information about programs in PATH'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-about-master.flake = false;
  inputs.src-about-master.type = "github";
  inputs.src-about-master.owner = "aleandros";
  inputs.src-about-master.repo = "about";
  inputs.src-about-master.ref = "refs/heads/master";
  inputs.src-about-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-about-master, ...}@deps:
  let 
    lib = flakeNimbleLib.lib;
    a = lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-about-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-about-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
    libs = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    first = builtins.toString (map (d: "${d}") a.dependencies);
  in a // {
    packages.x86_64-linux.first = pkgs.writeText "first.txt" "${first}";
  };
}
