{
  description = ''JSON-Binding for deser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser_json-master.flake = false;
  inputs.src-deser_json-master.ref   = "refs/heads/master";
  inputs.src-deser_json-master.owner = "gabbhack";
  inputs.src-deser_json-master.repo  = "deser_json";
  inputs.src-deser_json-master.type  = "github";
  
  inputs."faststreams".owner = "nim-nix-pkgs";
  inputs."faststreams".ref   = "master";
  inputs."faststreams".repo  = "faststreams";
  inputs."faststreams".dir   = "master";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser".owner = "nim-nix-pkgs";
  inputs."deser".ref   = "master";
  inputs."deser".repo  = "deser";
  inputs."deser".dir   = "v0_2_1";
  inputs."deser".type  = "github";
  inputs."deser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser_json-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-deser_json-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}