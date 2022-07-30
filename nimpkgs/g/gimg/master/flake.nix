{
  description = ''Google Images scraper lib and CLI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gimg-master.flake = false;
  inputs.src-gimg-master.ref   = "refs/heads/master";
  inputs.src-gimg-master.owner = "thisago";
  inputs.src-gimg-master.repo  = "gimg";
  inputs.src-gimg-master.type  = "github";
  
  inputs."useragent".owner = "nim-nix-pkgs";
  inputs."useragent".ref   = "master";
  inputs."useragent".repo  = "useragent";
  inputs."useragent".dir   = "";
  inputs."useragent".type  = "github";
  inputs."useragent".inputs.nixpkgs.follows = "nixpkgs";
  inputs."useragent".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gimg-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gimg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}