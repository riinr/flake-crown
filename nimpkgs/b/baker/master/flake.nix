{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-baker-master.flake = false;
  inputs.src-baker-master.owner = "jasonrbriggs";
  inputs.src-baker-master.ref   = "refs/heads/master";
  inputs.src-baker-master.repo  = "baker";
  inputs.src-baker-master.type  = "github";
  
  inputs."proton".owner = "nim-nix-pkgs";
  inputs."proton".ref   = "master";
  inputs."proton".repo  = "proton";
  inputs."proton".type  = "github";
  inputs."proton".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/docopt/docopt.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/docopt/docopt.nim".ref   = "master";
  inputs."https://github.com/docopt/docopt.nim".repo  = "https://github.com/docopt/docopt.nim";
  inputs."https://github.com/docopt/docopt.nim".type  = "github";
  inputs."https://github.com/docopt/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/docopt/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".owner = "nim-nix-pkgs";
  inputs."zip".ref   = "master";
  inputs."zip".repo  = "zip";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones".owner = "nim-nix-pkgs";
  inputs."timezones".ref   = "master";
  inputs."timezones".repo  = "timezones";
  inputs."timezones".type  = "github";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb".owner = "nim-nix-pkgs";
  inputs."ndb".ref   = "master";
  inputs."ndb".repo  = "ndb";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-baker-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-baker-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}