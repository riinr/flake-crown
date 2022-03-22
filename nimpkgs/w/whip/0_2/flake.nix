{
  description = ''Fast http server based on httpbeast and nest for high performance routing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-whip-0_2.flake = false;
  inputs.src-whip-0_2.ref   = "refs/tags/0.2";
  inputs.src-whip-0_2.owner = "mattaylor";
  inputs.src-whip-0_2.repo  = "whip";
  inputs.src-whip-0_2.type  = "github";
  
  inputs."packedjson".owner = "nim-nix-pkgs";
  inputs."packedjson".ref   = "master";
  inputs."packedjson".repo  = "packedjson";
  inputs."packedjson".dir   = "0_2_2";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nest".owner = "nim-nix-pkgs";
  inputs."nest".ref   = "master";
  inputs."nest".repo  = "nest";
  inputs."nest".dir   = "";
  inputs."nest".type  = "github";
  inputs."nest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast".owner = "nim-nix-pkgs";
  inputs."httpbeast".ref   = "master";
  inputs."httpbeast".repo  = "httpbeast";
  inputs."httpbeast".dir   = "v0_4_0";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-whip-0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-whip-0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}