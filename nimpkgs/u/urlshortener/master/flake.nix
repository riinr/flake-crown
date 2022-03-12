{
  description = ''A URL shortener cli app. using bit.ly'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-urlshortener-master.flake = false;
  inputs.src-urlshortener-master.owner = "jabbalaci";
  inputs.src-urlshortener-master.ref   = "refs/heads/master";
  inputs.src-urlshortener-master.repo  = "UrlShortener";
  inputs.src-urlshortener-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-urlshortener-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-urlshortener-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}