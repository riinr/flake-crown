{
  description = ''Websocket for httpx.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-websocketx-master.flake = false;
  inputs.src-websocketx-master.owner = "xflywind";
  inputs.src-websocketx-master.ref   = "refs/heads/master";
  inputs.src-websocketx-master.repo  = "websocketx";
  inputs.src-websocketx-master.type  = "github";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx".dir   = "nimpkgs/h/httpx";
  inputs."httpx".owner = "riinr";
  inputs."httpx".ref   = "flake-pinning";
  inputs."httpx".repo  = "flake-nimble";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-websocketx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-websocketx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}