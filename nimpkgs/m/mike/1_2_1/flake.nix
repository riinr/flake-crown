{
  description = ''A very simple micro web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mike-1_2_1.flake = false;
  inputs.src-mike-1_2_1.owner = "ire4ever1190";
  inputs.src-mike-1_2_1.ref   = "refs/tags/1.2.1";
  inputs.src-mike-1_2_1.repo  = "mike";
  inputs.src-mike-1_2_1.type  = "github";
  
  inputs."httpx".dir   = "nimpkgs/h/httpx";
  inputs."httpx".owner = "riinr";
  inputs."httpx".ref   = "flake-pinning";
  inputs."httpx".repo  = "flake-nimble";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocketx".dir   = "nimpkgs/w/websocketx";
  inputs."websocketx".owner = "riinr";
  inputs."websocketx".ref   = "flake-pinning";
  inputs."websocketx".repo  = "flake-nimble";
  inputs."websocketx".type  = "github";
  inputs."websocketx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mike-1_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mike-1_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}